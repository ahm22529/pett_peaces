import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:pett_peaces/core/utiles/agoraservices/App_ifo.dart';
import 'package:pett_peaces/core/utiles/agoraservices/agora.dart'; // Adjust import path if needed

class AgoraVideoCallWidget extends StatefulWidget {
  final String token, channel;

  const AgoraVideoCallWidget(
      {super.key, required this.token, required this.channel});
  @override
  _AgoraVideoCallWidgetState createState() => _AgoraVideoCallWidgetState();
}

class _AgoraVideoCallWidgetState extends State<AgoraVideoCallWidget> {
  late AgoraServices _agoraServices;
  bool _localUserJoined = false;
  int? _remoteUid;

  @override
  void initState() {
    super.initState();
    _agoraServices = AgoraServices()
      ..onLocalUserJoined = _onLocalUserJoined
      ..onRemoteUserJoined = _onRemoteUserJoined
      ..onRemoteUserLeft = _onRemoteUserLeft;
    _initAgora();
  }

  Future<void> _initAgora() async {
    await _agoraServices.initAgora(widget.token, widget.channel);
  }

  void _onLocalUserJoined() {
    setState(() {
      _localUserJoined = true;
    });
  }

  void _onRemoteUserJoined(int remoteUid) {
    setState(() {
      _remoteUid = remoteUid;
    });
  }

  void _onRemoteUserLeft(int remoteUid) {
    setState(() {
      _remoteUid = null;
    });
  }

  void _endCall() async {
    await _agoraServices
        .dispose(); // End the call by disposing of Agora resources
    Navigator.pop(context); // Close the current screen
  }

  @override
  void dispose() {
    _agoraServices.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: _remoteUid != null
                ? AgoraVideoView(
                    controller: VideoViewController.remote(
                      rtcEngine: _agoraServices.engine,
                      canvas: VideoCanvas(uid: _remoteUid),
                      connection: RtcConnection(channelId: widget.channel),
                    ),
                  )
                : Icon(
                    Icons.video_call,
                    size: 80,
                    color: Colors.orange,
                  ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 200,
              height: 250,
              child: Center(
                child: _localUserJoined
                    ? AgoraVideoView(
                        controller: VideoViewController(
                          rtcEngine: _agoraServices.engine,
                          canvas: const VideoCanvas(uid: 0),
                        ),
                      )
                    : const CircularProgressIndicator(),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: _endCall,
              child: Icon(
                Icons.call_end,
                color: Colors.white,
              ),
              backgroundColor: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}

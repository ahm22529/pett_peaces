import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/services/agoraservices/agora.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart'; // Adjust import path if needed

class AgoraVoiceCallWidget extends StatefulWidget {
  final String token, channel;

  const AgoraVoiceCallWidget(
      {super.key, required this.token, required this.channel});

  @override
  _AgoraVoiceCallWidgetState createState() => _AgoraVoiceCallWidgetState();
}

class _AgoraVoiceCallWidgetState extends State<AgoraVoiceCallWidget> {
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
    await _agoraServices.initAgora("", "");
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Voice Call'),
        actions: [
          IconButton(
            icon: const Icon(Icons.call_end),
            onPressed: _endCall,
          ),
        ],
      ),
      body: Center(
        child: _localUserJoined
            ? const Text(
                'You are in a call',
                style: TextStyle(fontSize: 20),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 100,
                    child: Text(
                      "A",
                      style: AppStyles.stylesmedium32(context)
                          .copyWith(fontSize: 130),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "مكالمه مع كريم ",
                    style: AppStyles.stylesemi20(context)
                        .copyWith(color: Colors.black),
                  )
                ],
              ),
      ),
    );
  }
}

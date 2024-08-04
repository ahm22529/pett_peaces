import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/agoraservices/agora.dart'; // Adjust import path if needed

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
      appBar: AppBar(
        title: Text('Voice Call'),
        actions: [
          IconButton(
            icon: Icon(Icons.call_end),
            onPressed: _endCall,
          ),
        ],
      ),
      body: Center(
        child: _localUserJoined
            ? Text(
                'You are in a call',
                style: TextStyle(fontSize: 20),
              )
            : CircularProgressIndicator(),
      ),
    );
  }
}

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:pett_peaces/core/utiles/agoraservices/App_ifo.dart';

class AgoraServices {
  late RtcEngine _engine;

  // Callbacks
  void Function()? onLocalUserJoined;
  void Function(int remoteUid)? onRemoteUserJoined;
  void Function(int remoteUid)? onRemoteUserLeft;

  RtcEngine get engine => _engine; // Getter for RtcEngine

  Future<void> initAgora(o, chaael) async {
    try {
      await [Permission.microphone, Permission.camera].request();

      _engine = await createAgoraRtcEngine();
      await _engine.initialize(
        RtcEngineContext(
          appId: AgoraManager.appId,
          channelProfile: ChannelProfileType.channelProfileCommunication,
        ),
      );

      _engine.registerEventHandler(
        RtcEngineEventHandler(
          onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
            onLocalUserJoined?.call();
          },
          onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
            onRemoteUserJoined?.call(remoteUid);
          },
          onUserOffline: (RtcConnection connection, int remoteUid,
              UserOfflineReasonType reason) {
            onRemoteUserLeft?.call(remoteUid);
          },
        ),
      );

      await _engine.enableVideo();
      await _engine.startPreview();
      await _engine.joinChannel(
        token: o,
        channelId: chaael,
        options: const ChannelMediaOptions(
          autoSubscribeVideo: true,
          autoSubscribeAudio: true,
          publishCameraTrack: true,
          publishMicrophoneTrack: true,
          clientRoleType: ClientRoleType.clientRoleBroadcaster,
        ),
        uid: 0,
      );
    } catch (e) {
      print('Agora initialization failed: $e');
    }
  }

  Future<void> dispose() async {
    try {
      await _engine.leaveChannel();
      await _engine.release();
    } catch (e) {
      print('Failed to dispose Agora resources: $e');
    }
  }
}

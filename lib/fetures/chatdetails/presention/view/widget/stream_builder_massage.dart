import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/core/utiles/puserservices/pusher_services.dart';
import 'package:pett_peaces/fetures/chatdetails/data/model/chatdetailsresponse/chatdetailsresponse.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/manager/fetachalllchatcubit/chatdetails_cubit.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/view/widget/body_details.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class ChatPusher extends StatefulWidget {
  final String token, userid;
  final UserEntity userEntity;

  const ChatPusher({
    super.key,
    required this.token,
    required this.userid,
    required this.userEntity,
  });

  @override
  State<ChatPusher> createState() => _ChatPusherState();
}

class _ChatPusherState extends State<ChatPusher> {
  late PusherConfig pusherConfig;

  @override
  void initState() {
    super.initState();
    fetchInitialMessages();
    initPusher();
  }

  Future<void> fetchInitialMessages() async {
    BlocProvider.of<ChatdetailsCubit>(context).getmassage(
      endpoint: "chat/",
      token: widget.token,
      id: widget.userid,
    );
  }

  Future<void> initPusher() async {
    pusherConfig = PusherConfig();
    await pusherConfig.initPusher(
      onEvent,
      channelName: "chat",
      roomId: widget.userid,
    );
  }

  void onEvent(PusherEvent event) {
    log("event came: ${event.data}");
    try {
      if (event.eventName == "App\\Events\\PushChatMessageEvent") {
        final newMessage = Chatdetailsresponse.fromJson((event.data));
      }
    } catch (e) {
      log("Error parsing event: $e");
    }
  }

  @override
  void dispose() {
    pusherConfig.disconnect();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatdetailsCubit, ChatdetailsState>(
      builder: (context, state) {
        if (state is ChatdetailsSucess) {
          return Bodysetailsmassage(
            chatDetailsEntity: state.detailsEntity,
            userEntity: widget.userEntity,
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

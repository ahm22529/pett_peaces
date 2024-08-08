import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pett_peaces/core/utiles/services/puserservices/pusher_services.dart';
import 'package:pett_peaces/fetures/chatdetails/domain/entity/massage_entity.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/manager/cubit/send_cubit.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/view/widget/foterdetails.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/manager/fetachalllchatcubit/chatdetails_cubit.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/view/widget/body_details.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class ChatPusher extends StatefulWidget {
  final String token, userid, chatid;
  final UserEntity userEntity;

  const ChatPusher({
    super.key,
    required this.token,
    required this.userid,
    required this.userEntity,
    required this.chatid,
  });

  @override
  State<ChatPusher> createState() => _ChatPusherState();
}

class _ChatPusherState extends State<ChatPusher> {
  late PusherConfig pusherConfig;
  ScrollController scrollController = ScrollController();
  final TextEditingController _messageController = TextEditingController();
  final List<MassageEntity> massage = [];
  int currentpage = 1;
  bool isLoadingMore = false;
  File? _attachment;

  @override
  void initState() {
    super.initState();
    fetchInitialMessages();
    _scrollToBottom();
    initPusher();

    scrollController.addListener(() {
      if (scrollController.position.atEdge &&
          scrollController.position.pixels == 0 &&
          !isLoadingMore) {
        setState(() {
          isLoadingMore = true;
          currentpage++;
        });
        fetchInitialMessages();
      }
    });
  }

  Future<void> fetchInitialMessages() async {
    await BlocProvider.of<ChatdetailsCubit>(context).getmassage(
        endpoint: "chat/131?page=$currentpage", token: widget.token, id: '');
  }

  Future<void> initPusher() async {
    pusherConfig = PusherConfig();
    await pusherConfig.initPusher(
      onEvent,
      channelName: "chat-${widget.chatid}-user-${widget.userEntity.id}",
    );
  }

  void onEvent(PusherEvent event) {
    log("event came: ${event.data}");
    try {
      var eventData = event.data;
      if (eventData is String) {
        eventData = jsonDecode(eventData);
      }

      if (eventData is Map<String, dynamic>) {
        var parsedData = eventData['data'];
        if (parsedData is String) {
          parsedData = jsonDecode(parsedData);
        }

        MassageEntity messageEntity = MassageEntity(
            idd: parsedData['id'],
            massage: parsedData['message'],
            date: DateTime.parse(parsedData['created_at']),
            attachc: parsedData['attach'] ?? '',
            userrid: parsedData['user_id']);

        setState(() {
          massage.insert(0, messageEntity); // إضافة الرسالة في بداية القائمة
        });
        _scrollToBottom();

        log(massage.length.toString());
      } else {
        log("Unexpected data format: $eventData");
      }
    } catch (e) {
      log("Error parsing event: $e");
    }
  }

  @override
  void dispose() {
    pusherConfig.disconnect();
    _messageController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  void sendMessage() {
    print(_attachment?.path);
    final message = _messageController.text.trim();
    if (message.isNotEmpty || _attachment != null) {
      final messageEntity = MassageEntity(
        idd: 1,
        massage: message,
        date: DateTime.now(),
        attachc: _attachment?.path ?? '',
        userrid: int.parse(widget.userEntity.id),
      );

      setState(() {
        massage.insert(0, messageEntity); // إضافة الرسالة في بداية القائمة
        _scrollToBottom();
      });
      final formData = FormData.fromMap({
        "chat_id": widget.chatid,
        "message": message,
        "attach": _attachment != null
            ? MultipartFile.fromFileSync(_attachment!.path)
            : null,
      });

      BlocProvider.of<SendCubit>(context).send(
        endpoint: "chat/send",
        token: widget.token,
        data: formData,
      );

      _messageController.clear();
      setState(() {
        _attachment = null; // مسح المرفق بعد الإرسال
      });
    }
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      double targetOffset =
          scrollController.position.maxScrollExtent + 1000; // زيادة 100 بكسل
      scrollController.animateTo(
        targetOffset,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: false, // تعيين حالة التحميل
        child: Column(
          children: [
            Expanded(
              child: BlocConsumer<ChatdetailsCubit, ChatdetailsState>(
                builder: (context, state) {
                  return ModalProgressHUD(
                    inAsyncCall: state is ChatdetailsLoad ? true : false,
                    child: Bodysetailsmassage(
                      massage: massage.reversed.toList(), // عكس ترتيب الرسائل
                      usermodel: widget.userEntity,
                      scrollController: scrollController,
                    ),
                  );
                },
                listener: (BuildContext context, ChatdetailsState state) {
                  if (state is ChatdetailsSucess) {
                    setState(() {
                      isLoadingMore = false;
                      massage.addAll(state.detailsEntity
                          .massage); // إضافة الرسائل في بداية القائمة
                    });
                  }
                },
              ),
            ),
            if (_attachment != null)
              Container(
                margin: EdgeInsets.all(8.0),
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.black12,
                ),
                child: Stack(
                  children: [
                    Image.file(
                      _attachment!,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        top: -10,
                        right: -15,
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                _attachment = null;
                              });
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            ))),
                  ],
                ),
              ),
            foterdetailsmassage(
              scrollController: scrollController,
              onChanged: (String s) {
                // Optional: Handle text changes if needed
              },
              onPressed: () {
                sendMessage();
              },
              textController: _messageController,
              onAttachmentPicked: (File file) {
                setState(() {
                  _attachment = file;
                  log(_attachment!.path);
                });
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

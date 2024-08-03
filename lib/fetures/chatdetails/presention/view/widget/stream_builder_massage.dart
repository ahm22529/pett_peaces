import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/manager/cubit/send_cubit.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/manager/fetachalllchatcubit/chatdetails_cubit.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';

class CustomPusher extends StatefulWidget {
  final String channel;

  const CustomPusher({super.key, required this.channel});

  @override
  State<CustomPusher> createState() => _CustomPusherState();
}

class _CustomPusherState extends State<CustomPusher> {
  late PusherChannelsFlutter pusher;
  List<String> messages = [];
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    initPlatformState();
    fetchInitialMessages(); // جلب الرسائل القديمة عند تحميل الشاشة
  }

  Future<void> initPlatformState() async {
    pusher = PusherChannelsFlutter.getInstance();
    await pusher.init(
      apiKey: "1823556",
      cluster: "eu",
    );
    await pusher.connect();

    // اشتراك القناة واستقبال الرسائل الجديدة
    await pusher.subscribe(
      channelName: widget.channel,
      onEvent: (event) {
        log('Received event: ${event.data}');
        setState(() {
          messages.add(event.data);
        });
      },
    );
  }

  Future<void> fetchInitialMessages() async {
    BlocProvider.of<ChatdetailsCubit>(context)
        .getmassage(endpoint: "chat/", token: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIyNTE3NjczLCJleHAiOjE3MjMxMjI0NzMsIm5iZiI6MTcyMjUxNzY3MywianRpIjoiZ20yRmVIallhaWVzV0VzbSIsInN1YiI6IjEzMCIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.0QZ4xgEEDCIuMmP3zMGlp96fUs-dB2hNs2xKssAmUxw", id: "119");
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      context.read<SendCubit>().send(
        endpoint: "chat/send",
        token: "YOUR_AUTH_TOKEN",
        data: {
          "chat_id": "6",
          "message": _controller.text,
          "attach": null,
        },
      );
      setState(() {
        messages.add(_controller.text);
        _controller.clear();
      });
    }
  }

  @override
  void dispose() {
    pusher.unsubscribe(channelName: widget.channel);
    pusher.disconnect();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pusher Chat Example'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Enter your message...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

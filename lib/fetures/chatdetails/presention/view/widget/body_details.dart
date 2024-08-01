import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/chatdetails/domain/entity/chat_details_entity.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/view/widget/chatbubels.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/view/widget/chatbulesforfrind.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/view/widget/foterdetails.dart';

class Bodysetailsmassage extends StatefulWidget {
  final ChatDetailsEntity chatDetailsEntity;

  const Bodysetailsmassage({super.key, required this.chatDetailsEntity});
  @override
  State<Bodysetailsmassage> createState() => _BodysetailsmassageState();
}

class _BodysetailsmassageState extends State<Bodysetailsmassage> {
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            reverse: true,
            controller: _controller,
            itemCount: widget.chatDetailsEntity.massage
                .length, // Number of messages for example
            itemBuilder: (context, index) {
              DateTime now = DateTime.now();
              String formattedTime =
                  "${now.hour}:${now.minute}:${now.second}"; // Time format

              return index % 2 == 0
                  ? ChatBubble(
                      message: 'Message from user $index',
                      time: formattedTime,
                    )
                  : ChatBubbleForFriend(
                      message: 'Message from friend $index',
                      time: formattedTime,
                    );
            },
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(16),
            child: foterdetailsmassage(
              scrollController: _controller,
            ))
      ],
    );
  }
}

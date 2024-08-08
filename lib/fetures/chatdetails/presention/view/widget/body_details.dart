import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/chatdetails/domain/entity/massage_entity.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/view/widget/chatbubels.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/view/widget/chatbulesforfrind.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Bodysetailsmassage extends StatefulWidget {
  final List<MassageEntity> massage;
  final ScrollController scrollController;
  final UserEntity usermodel;

  const Bodysetailsmassage({
    super.key,
    required this.massage,
    required this.usermodel,
    required this.scrollController,
  });

  @override
  State<Bodysetailsmassage> createState() => _BodysetailsmassageState();
}

class _BodysetailsmassageState extends State<Bodysetailsmassage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            reverse: false,
            controller: widget.scrollController,
            itemCount: widget.massage.length,
            itemBuilder: (context, index) {
              DateTime now = widget.massage[index].date;
              String formattedTime =
                  "${now.hour}:${now.minute}:${now.second}"; // Time format
              if (widget.massage[index].userrid.toString() ==
                  widget.usermodel.id) {
                return ChatBubbleForFriend(
                  message: widget.massage[index].massage,
                  time: formattedTime,
                );
              } else {
                print(widget.massage[index].userrid);
                return ChatBubble(
                  message: widget.massage[index].massage,
                  img: widget.massage[index].attachc,
                  time: formattedTime,
                );
              }
            },
          ),
        ),
      ],
    );
  }
}

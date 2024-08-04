import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/view/widget/appbar.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/view/widget/body_details.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/view/widget/stream_builder_massage.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class ChatPage extends StatelessWidget {
  const ChatPage(
      {super.key,
      required this.name,
      required this.imag,
      required this.id,
      required this.chanel,
      required this.token5,
      required this.chatid,
      required this.userid,
      required this.token,
      required this.userEntity});
  final String name, imag, chanel, token, token5;
  final UserEntity userEntity;
  final String chatid, userid;
  final int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize:
              const Size.fromHeight(kToolbarHeight + 15), // Adjust the height
          child: appbardetails(
            img: imag,
            name: name,
            chael: chanel,
            token: token,
          ),
        ),
        body: ChatPusher(
          token: token5,
          userid: userid,
          userEntity: userEntity,
        ));
  }
}

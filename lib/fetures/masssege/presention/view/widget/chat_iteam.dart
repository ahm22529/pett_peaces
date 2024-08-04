import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/chat_details.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/iteammassege.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class ChatItem extends StatelessWidget {
  final int index;

  final dynamic chat;
  final String token;
  final Function(int) onItemSelected;
  final UserEntity userEntity;
  final int userid;
  const ChatItem({
    super.key,
    required this.index,
    required this.chat,
    required this.onItemSelected,
    required this.userid,
    required this.token,
    required this.userEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.0),
      child: GestureDetector(
        onTap: () {
          onItemSelected(index);
          if (MediaQuery.of(context).size.width < 600) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Chatdetails(
                  Userid: userid,
                  name: chat.imagesender,
                  image: chat.name,
                  token: token,
                  chanel: chat.chanel,
                  chatid: chat.chatid.toString(),
                  userid: chat.userid.toString(),
                  token5: userEntity.token,
                  userEntity: userEntity,
                ),
              ),
            );
          }
        },
        child: IteamMassage(freinedChatEntity: chat),
      ),
    );
  }
}

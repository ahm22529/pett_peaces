import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/chat_details.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/chat_iteam.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/iteammassege.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class ChatList extends StatelessWidget {
  final ScrollController scrollController;
  final List chats;
  final bool isLoadingMore;
  final String token;
  final Function(int) onItemSelected;
  final UserEntity userEntity;

  const ChatList({
    super.key,
    required this.scrollController,
    required this.chats,
    required this.isLoadingMore,
    required this.onItemSelected,
    required this.token,
    required this.userEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        controller: scrollController,
        itemCount: chats.length + (isLoadingMore ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == chats.length) {
            return Center(child: CircularProgressIndicator());
          }
          return ChatItem(
            index: index,
            chat: chats[index],
            onItemSelected: onItemSelected,
            userid: chats[index].userid,
            token: token,
            userEntity: userEntity,
          );
        },
      ),
    );
  }
}

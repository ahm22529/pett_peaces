import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/chat_details.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/chat_iteam.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/iteammassege.dart';

class ChatList extends StatelessWidget {
  final ScrollController scrollController;
  final List chats;
  final bool isLoadingMore;
 
  final Function(int) onItemSelected;

  const ChatList({
    super.key,
    required this.scrollController,
    required this.chats,
    required this.isLoadingMore,
    required this.onItemSelected, 
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
          );
        },
      ),
    );
  }
}

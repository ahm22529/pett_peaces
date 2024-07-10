import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/view/widget/chatinfo.dart';

class Chatdetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyChatdetails(),
    );
  }
}

class BodyChatdetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChatPage();
  }
}

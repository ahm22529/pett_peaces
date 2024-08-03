import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/view/widget/appbar.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/view/widget/body_details.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/view/widget/stream_builder_massage.dart';

class ChatPage extends StatelessWidget {
  const ChatPage(
      {super.key, required this.name, required this.imag, required this.id});
  final String name, imag;
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
          ),
        ),
        body: CustomPusher(
         channel: '',
        ));
  }
}

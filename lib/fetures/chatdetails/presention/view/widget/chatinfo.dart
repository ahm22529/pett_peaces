import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/function/imagePicker.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/view/widget/appbar.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/view/widget/bodydetails.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(kToolbarHeight + 15), // Adjust the height
          child: appbardetails(),
        ),
        body: Bodysetailsmassage());
  }
}

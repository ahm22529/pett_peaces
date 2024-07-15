import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombackground.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/backgroundcontiner.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/bodyenteremail.dart';

class enteremailb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: backgroundrest(widget: BodyEnteremail(), pos: MediaQuery.of(context).size.height * .3,));
  }
}



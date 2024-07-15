import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:pett_peaces/core/utiles/widget/custombackground.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/backgroundcontiner.dart';

import 'package:pett_peaces/fetures/restpassword/presention/view/widget/bodyrestpassword.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/enteremail.dart';

class Restpassword extends StatelessWidget {
  const Restpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  backgroundrest(widget: BodyRestPassword(), pos: MediaQuery.of(context).size.height * .1,));
  }
}

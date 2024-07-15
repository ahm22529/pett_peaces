import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/function/imagePicker.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/contactus/prsention/view/widget/textfiledreson.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/accountappbar.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/addphote.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/bodymyaccount.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/buttomtext.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/droptextfiled.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/fristcontiner.dart';

import 'dart:io';

class Myaccount extends StatefulWidget {
  @override
  _MyaccountState createState() => _MyaccountState();
}

class _MyaccountState extends State<Myaccount> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Bodymyaccount()
    );
  }
}


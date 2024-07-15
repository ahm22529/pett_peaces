import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pett_peaces/core/utiles/widget/custombackground.dart';

import 'package:pett_peaces/fetures/newpassword/presention/view/widget/bodynewspassword.dart';
import 'package:pett_peaces/fetures/newpassword/presention/view/widget/shape.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/bodyenteremail.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/customdivider.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/enteremail.dart';

class Newpassword extends StatelessWidget {
  const Newpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const NewPassWord();
  }
}

class NewPassWord extends StatelessWidget {
  const NewPassWord({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Shape(),
    );
  }
}


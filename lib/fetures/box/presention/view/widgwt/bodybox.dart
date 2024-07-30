import 'package:flutter/material.dart';

import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/box/presention/view/widgwt/contant_body_box.dart';

import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
class Bodybox extends StatelessWidget {
  final UserEntitymodel userEntitymodel;
  const Bodybox({super.key, required this.userEntitymodel});
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const customAppbar(name: 'السله'),
      ),
      body:ContantBodyBox(userEntitymodel: userEntitymodel,)
    );
  }
}


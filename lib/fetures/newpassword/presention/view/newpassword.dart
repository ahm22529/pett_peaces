import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pett_peaces/core/utiles/widget/custombackground.dart';

import 'package:pett_peaces/fetures/newpassword/presention/view/widget/bodynewspassword.dart';

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
    return Scaffold(
      body: Custombackground(
        image: 'Asset/image/كلمة المرور الجديدة.png',
        wideget: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: BodyNewsPassword()),
            ),
          ),
        ),
      ),
    );
  }
}

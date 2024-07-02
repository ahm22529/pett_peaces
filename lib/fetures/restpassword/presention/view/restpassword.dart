import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:pett_peaces/core/utiles/widget/custombackground.dart';

import 'package:pett_peaces/fetures/restpassword/presention/view/widget/bodyrestpassword.dart';

class Restpassword extends StatelessWidget {
  const Restpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Custombackground(
          image: "Asset/image/إسترجاع كلمة المرور.png",
          wideget: BodyRestPassword()),
    );
  }
}

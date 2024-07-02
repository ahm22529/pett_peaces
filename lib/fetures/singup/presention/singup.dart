import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pett_peaces/core/utiles/widget/custombackground.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/bodysingup.dart';

class Singup extends StatelessWidget {
  const Singup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Custombackground(
        image: 'Asset/image/Sign Up.png',
        wideget: BodySingUp(),
      ),
    );
  }
}

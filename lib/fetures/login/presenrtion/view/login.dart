import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:pett_peaces/core/utiles/widget/custombackground.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/bodylogin.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Custombackground(
        image: 'Asset/image/Sign in.png',
        wideget: LoginWidget(),
      ),
    );
  }
}

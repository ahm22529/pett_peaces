import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:pett_peaces/core/utiles/widget/custombackground.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/bodylogin.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/background.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/imagedog.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:CustomBackgroundSinup(widget1: imagedog(img: "Asset/image/close-up-adorable-kitten-bathtub-removebg-preview 1 (1).png", hig: MediaQuery.of(context).size.height*.3,), widget2: LoginWidget(),)
      
      
       
    );
  }
}

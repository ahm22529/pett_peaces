import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/background.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/bodysingup.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/imagedog.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/singupcontiner.dart';

class Singup extends StatelessWidget {
  const Singup({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomBackgroundSinup(widget1: imagedog(img: "Asset/image/photography-surprised-dog-looking-from-white-long-frame-banner-removebg-preview 1.png", hig: MediaQuery.of(context).size.height * .21, bo: -10,), widget2: singupcontiner(),),
    );
  }
}

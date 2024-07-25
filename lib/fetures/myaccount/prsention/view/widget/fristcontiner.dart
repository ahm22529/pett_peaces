import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/bodyfristcontiner.dart';

class fristcontiner extends StatelessWidget {
  const fristcontiner({
    super.key,
    required this.toggleEditingMode,
    required this.togglecacelingMode,
    required this.text1,
    required this.text2,
    required this.onImagePicked,
    required this.img,
    required this.id,
  });
  final VoidCallback toggleEditingMode, togglecacelingMode;
  final String text1, text2, id;
  final dynamic Function(File?) onImagePicked;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              "Asset/image/psps.png"), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 35),
        child: bodyfristcontiner(
          toggleEditingMode: toggleEditingMode,
          togglecacelingMode: togglecacelingMode,
          text1: text1,
          text2: text2,
          onImagePicked: onImagePicked,
          id: id,
        ),
      ),
    );
  }
}

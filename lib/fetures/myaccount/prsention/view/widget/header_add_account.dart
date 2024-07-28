import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/bodyfristcontiner.dart';

class HeaderWidget extends StatelessWidget {
  final VoidCallback toggleEditingMode;
  final String text1;
  final String text2;

  final VoidCallback toggleCancelingMode;
  final String id;
  final void Function(File?) onImagePicked;
  const HeaderWidget({
    Key? key,
    required this.toggleEditingMode,
    required this.text1,
    required this.text2,
    required this.onImagePicked,
    required this.toggleCancelingMode,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bodyfristcontiner(
        toggleEditingMode: toggleEditingMode,
        text1: text1,
        text2: text2,
        onImagePicked: onImagePicked,
        id: id,
        togglecacelingMode: toggleCancelingMode);
  }
}

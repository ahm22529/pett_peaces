import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/addphote.dart';

class ImagePickerWidget extends StatelessWidget {
  final bool isEditing;
  final VoidCallback pickImage;

  const ImagePickerWidget({
    Key? key,
    required this.isEditing,
    required this.pickImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pickImage,
      child: Visibility(
        visible: isEditing,
        child: const addphot(),
      ),
    );
  }
}

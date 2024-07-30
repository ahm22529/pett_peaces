import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/function/imagePicker.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/accountappbar.dart';
import 'dart:io';

class bodyfristcontiner extends StatefulWidget {
  const bodyfristcontiner({
    super.key,
    required this.toggleEditingMode,
    required this.togglecacelingMode,
    required this.text1,
    required this.text2,
    required this.onImagePicked,
    required this.id,
    required this.onTap, // Add this
  });

  final VoidCallback toggleEditingMode, togglecacelingMode;
  final String text1, text2, id;
  final Function(File?) onImagePicked;
  final void Function()? onTap; // Add this

  @override
  _bodyfristcontinerState createState() => _bodyfristcontinerState();
}

class _bodyfristcontinerState extends State<bodyfristcontiner> {
  File? _selectedImage;

  Future<void> _pickImage() async {
    final selectedImage = await ImagePickerService().pickImages();

    if (selectedImage != null && selectedImage.isNotEmpty) {
      setState(() {
        _selectedImage = selectedImage.first;
      });
      widget.onImagePicked(_selectedImage); // Call the callback
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        acountappbar(
          toggleEditingMode: widget.toggleEditingMode,
          togglecacelingMode: widget.togglecacelingMode,
          id: widget.id,
          onTap: widget.onTap,
        ),
        GestureDetector(
          onTap: _pickImage,
          child: CircleAvatar(
            radius: 50, // Adjust the radius as needed
            backgroundImage: _selectedImage != null
                ? FileImage(_selectedImage!)
                : AssetImage("Asset/image/acc.png") as ImageProvider,
          ),
        ),
        Text(
          widget.text1,
          style: AppStyles.styleRegular24(context).copyWith(
              fontSize: 28, fontWeight: FontWeight.w600, color: Colors.orange),
        ),
        Text(
          widget.text2,
          style: AppStyles.styleRegular24(context).copyWith(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Color(0xff020202).withOpacity(.5)),
        ),
      ],
    );
  }
}

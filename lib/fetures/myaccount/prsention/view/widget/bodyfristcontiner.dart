import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/function/imagePicker.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/accountappbar.dart';

class bodyfristcontiner extends StatelessWidget {
  const bodyfristcontiner({
    super.key,
    required this.toggleEditingMode,
    required this.togglecacelingMode, required this.text1, required this.text2,
  });

  final VoidCallback toggleEditingMode, togglecacelingMode;
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        acountappbar(
          toggleEditingMode: toggleEditingMode,
          togglecacelingMode: togglecacelingMode,
        ),
        GestureDetector(
          onTap: () => ImagePickerService().pickImages,
          child: Image.asset("Asset/image/acc.png")),
        Text(
          text1,
          style: AppStyles.styleRegular24(context).copyWith(
              fontSize: 28, fontWeight: FontWeight.w600, color: Colors.orange),
        ),
        Text(
         text2,
          style: AppStyles.styleRegular24(context).copyWith(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Color(0xff020202).withOpacity(.5)),
        )
      ],
    );
  }
}

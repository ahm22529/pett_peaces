import 'package:flutter/material.dart';

class Custombuttom extends StatelessWidget {
  const Custombuttom({super.key, required this.titel, required this.onPressed});
  final String titel;
  final void Function()? onPressed;
//  @override
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        child: Text("أبدا الآن"),
        style: TextButton.styleFrom(
          backgroundColor: Color(0xffF78E32),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(12), // Adjust the radius as needed
          ),
        ),
      ),
    );
  }
}

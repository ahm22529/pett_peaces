import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/buttomtext.dart';

class SubmitButtons extends StatelessWidget {
  final VoidCallback onSubmit;
  final String firstButtonText;
  final String secondButtonText;

  const SubmitButtons({
    Key? key,
    required this.onSubmit,
    this.firstButtonText = 'حفظ ',
    this.secondButtonText = 'الغاء ',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
              child: buttomtext(
            onTap: onSubmit,
            color: Colors.orange,
            text: firstButtonText,
            colortext: Colors.white,
          )),
          SizedBox(width: 10),
          Expanded(
              child: buttomtext(
            color: Colors.white,
            text: secondButtonText,
            colortext: Colors.orange,
          )),
        ],
      ),
    );
  }

  Widget _buildButton({
    required Color color,
    required String text,
    required Color textColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 16),
        ),
      ),
    );
  }
}

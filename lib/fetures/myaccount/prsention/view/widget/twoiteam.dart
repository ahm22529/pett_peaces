import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/myaccount/prsention/view/widget/buttomtext.dart';

class twobuttomMyaccount extends StatelessWidget {
  const twobuttomMyaccount({
    super.key,
    required this.isacu,
  });

  final bool isacu;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: buttomtext(
            color: Colors.orange,
            text: isacu ? "حفظ التعديل" : 'عرض للبيع',
            colortext: Colors.white,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: buttomtext(
            color: Colors.transparent,
            text: isacu ? " إلغاء" : ' عرض للتزاوج',
            colortext: Colors.orange,
          ),
        ),
      ],
    );
  }
}

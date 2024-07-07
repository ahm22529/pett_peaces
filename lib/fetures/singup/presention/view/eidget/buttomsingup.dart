import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';

class ButtomSingup extends StatelessWidget {
  const ButtomSingup({
    super.key,
    required this.globalKey,
  });

  final GlobalKey<FormState> globalKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Custombuttom(
              titel: "تسجيل الدخول ",
              onPressed: () {
                if (globalKey.currentState!.validate()) {
                } else {}
              }),
        ],
      ),
    );
  }
}

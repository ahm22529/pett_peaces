import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/home/presention/widget/homescrren.dart';

class singinbutto extends StatelessWidget {
  const singinbutto({
    super.key,
    required this.globalKey,
  });

  final GlobalKey<FormState> globalKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Custombuttom(
          titel: 'تسجيل دخول',
          onPressed: () {
            if (globalKey.currentState!.validate()) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (builder) => HomeScreen()));
            } else {}
          },
        ),
      ],
    );
  }
}

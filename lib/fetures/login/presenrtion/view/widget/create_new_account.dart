import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/singup/presention/singup.dart';

class Forget extends StatelessWidget {
  const Forget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (builder) => const Singup())),
      child: RichText(
        text: const TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'ليس لدي حساب؟',
              style: TextStyle(color: Colors.black), // Style for the first part
            ),
            TextSpan(
              text: ' حساب جديد',
              style: TextStyle(
                  color: Color(0xffF78E32)), // Style for the second part
            ),
          ],
        ),
      ),
    );
  }
}

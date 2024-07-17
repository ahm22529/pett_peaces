import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/chatdetails.dart';

class contact extends StatelessWidget {
  const contact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (builder) => Chatdetails())),
            child: Image.asset("Asset/image/chatdoc.png")),
        const SizedBox(
          width: 8,
        ),
        Image.asset("Asset/image/Frame 1000004257.png"),
        const SizedBox(
          width: 8,
        ),
        Image.asset("Asset/image/videocalldoc.png"),
      ],
    );
  }
}

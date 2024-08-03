import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/chat_details.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/viedo_call.dart';

class Contact extends StatelessWidget {
  const Contact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (builder) => const Chatdetails(
                          Userid: 1,
                          name: '',
                          image: '',
                        ))),
            child: Image.asset("Asset/image/chatdoc.png")),
        const SizedBox(
          width: 8,
        ),
        Image.asset("Asset/image/Frame 1000004257.png"),
        const SizedBox(
          width: 8,
        ),
        GestureDetector(
           // onTap: () => Navigator.push(
            //    context, MaterialPageRoute(builder: (builder) => ViedoCall())),
            child: Image.asset("Asset/image/videocalldoc.png")),
      ],
    );
  }
}

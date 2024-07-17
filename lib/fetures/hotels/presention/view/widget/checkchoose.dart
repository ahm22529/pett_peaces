import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/prices.dart';

class checkchoose extends StatefulWidget {
  const checkchoose({
    super.key,
    required this.titel,
  });
  final String titel;

  @override
  State<checkchoose> createState() => _checkchooseState();
}

class _checkchooseState extends State<checkchoose> {
  bool isactive = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: isactive
          ? GestureDetector(
              onTap: () {
                setState(() {
                  isactive = !isactive;
                });
              },
              child: Image.asset("Asset/image/acti.png"),
            )
          : GestureDetector(
              onTap: () {
                setState(() {
                  isactive = !isactive;
                });
              },
              child: Image.asset("Asset/image/notactiv.png"),
            ),
      title: Text(
        widget.titel,
        style: AppStyles.styleRegular14(context).copyWith(
          color: Color(0xff00070D).withOpacity(.8),
        ),
      ),
      trailing: price(isactive: isactive),
    );
  }
}

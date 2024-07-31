import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/prices.dart';

class Checkchoose extends StatefulWidget {
  const Checkchoose({
    super.key,
    required this.titel,
    required this.titel2,
    required this.serviceId,
    required this.onSelected,
    required this.onremove,
  });
  final String titel;
  final String titel2;
  final int serviceId;
  final ValueChanged<int> onSelected;
  final ValueChanged<int> onremove;

  @override
  State<Checkchoose> createState() => _CheckchooseState();
}

class _CheckchooseState extends State<Checkchoose> {
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
                widget.onremove(widget.serviceId);
              },
              child: Image.asset("Asset/image/acti.png"),
            )
          : GestureDetector(
              onTap: () {
                setState(() {
                  isactive = !isactive;
                });
                widget.onSelected(widget.serviceId);
              },
              child: Image.asset("Asset/image/notactiv.png"),
            ),
      title: Text(
        widget.titel,
        style: AppStyles.styleRegular14(context).copyWith(
          color: Color(0xff00070D).withOpacity(.8),
        ),
      ),
      trailing: Price(
        isactive: isactive,
        titel: widget.titel2,
      ),
    );
  }
}

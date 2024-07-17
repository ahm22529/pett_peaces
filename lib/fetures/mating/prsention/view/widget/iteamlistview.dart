import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/butom.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/iteamlistview.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/infoanmiles.dart';

class iteamlistviewm extends StatelessWidget {
  const iteamlistviewm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffF78E32),
          image: const DecorationImage(
            image: AssetImage(
                "Asset/image/OPSEG70 1.png"), // Replace with your image asset
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 9),
            child: iteamlistviewami(
              widget: buttomanmandmating(
                text: "الغاء العرض",
                image: "Asset/image/remove-circle.png",
                color: Colors.red,
                onTap: () {},
              ),
            )),
      ),
    );
  }
}

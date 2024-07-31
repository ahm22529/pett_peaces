import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class Classify extends StatelessWidget {
  const Classify({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffF78E32), borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              text,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: Colors.white, fontSize: 12),
            ),
            SizedBox(
              width: 2,
            ),
            Image.asset("Asset/image/del.png")
          ],
        ),
      ),
    );
  }
}

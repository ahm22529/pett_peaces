import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/customtextfiledstor.dart';

class continertextfiled extends StatelessWidget {
  const continertextfiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Image.asset(
              'Asset/image/search 01.png',
              width: 20,
              height: 20,
            ),
            const SizedBox(width: 8),
            const Expanded(
              child: customtextfiledstore(),
            ),
          ],
        ),
      ),
    );
  }
}

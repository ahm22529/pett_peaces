import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/customtextfiledstor.dart';

class cobontextfiled extends StatelessWidget {
  const cobontextfiled({
    super.key,
    required this.name,
  });
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(.15)),
        color: Colors.white,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            SizedBox(width: 8),
            Expanded(
              child: customtextfiledstore(
                name: name,
                textEditingController: TextEditingController(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/custom_text_filed_stor.dart';

class cobontextfiled extends StatelessWidget {
  const cobontextfiled({
    super.key,
    required this.name,
    this.onChanged,
  });
  final String name;

  final void Function(String)? onChanged;

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
              child: Customtextfiledstore(
                onChanged: onChanged,
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

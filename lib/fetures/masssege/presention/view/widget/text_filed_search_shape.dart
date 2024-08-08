import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/search_fileed.dart';


class MassageSearchShape extends StatelessWidget {
  const MassageSearchShape({
    super.key,
    required this.name,
    required this.textEditingController,
  });
  final String name;
  final TextEditingController textEditingController;
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
            Expanded(
              child: MassageFiledSearch(
                name: name,
                textEditingController: textEditingController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

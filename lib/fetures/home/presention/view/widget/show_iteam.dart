import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/active_iteam.dart';

class showIteam extends StatelessWidget {
  final bool active;
  final String img, text;

  const showIteam({
    super.key,
    required this.active,
    required this.img,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ActiveIteam(
      im: img,
      te: text,
      color: active ? const Color(0xffF78E32) : const Color(0xffF5E8DD),
    );
  }
}

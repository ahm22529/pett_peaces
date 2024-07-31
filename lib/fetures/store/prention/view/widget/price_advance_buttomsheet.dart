import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/classify_iteam_advace.dart';

// ignore: camel_case_types
class prices extends StatelessWidget {
  const prices({
    super.key,
    required this.lis,
  });

  final List lis;

  @override
  Widget build(BuildContext context) {
    return ClassifyIteam(lis: lis);
  }
}

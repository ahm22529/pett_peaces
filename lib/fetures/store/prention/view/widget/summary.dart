import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/bodycontinersummary.dart';

class summary extends StatelessWidget {
  const summary({
    super.key,
    required this.producEntity,
  });
  final ProducEntity producEntity;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: BodyContiner(
        producEntity: producEntity,
      ),
    );
  }
}

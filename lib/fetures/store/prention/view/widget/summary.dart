import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/body_continer_summary.dart';

class Summary extends StatelessWidget {
  const Summary({
    super.key,
    required this.producEntity,
    required this.userEntitymodel, required this.pro,
  });
  final ProducEntity producEntity;
  final UserEntity userEntitymodel;
  final List<ProducEntity> pro;
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
        userEntitymodel: userEntitymodel, suggtion:pro,
      ),
    );
  }
}

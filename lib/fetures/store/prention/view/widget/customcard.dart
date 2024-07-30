import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/domain/entity/Produxt_entity.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/listtilecustomdart.dart';

class CustomCard extends StatelessWidget {
  final ProducEntity producEntity;
  const CustomCard({super.key, required this.producEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * .8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              spreadRadius: 1,
              offset: const Offset(0, 5),
            )
          ],
        ),
        child: listtilecustomcard(
          producEntity: producEntity,
        ));
  }
}

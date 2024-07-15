import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sizeconfig.dart';
import 'package:pett_peaces/fetures/account/presention/view/widget/card.dart';
import 'package:pett_peaces/fetures/account/presention/view/widget/listview.dart';
import 'package:pett_peaces/fetures/account/presention/view/widget/textcontiner.dart';

class BodyAccount extends StatefulWidget {
  @override
  State<BodyAccount> createState() => _BodyAccountState();
}

class _BodyAccountState extends State<BodyAccount> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textcontiner(),
                  SizedBox(
                    height: 32,
                  ),
                  Iteamconter(),
                ],
              ),
              Positioned(
                top: MediaQuery.of(context).size.width <= SizeConfig.tablet
                    ? MediaQuery.of(context).size.height * .17
                    : MediaQuery.of(context).size.height * .2,
                left: 0,
                right: 0,
                child: Cardd(),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.width <= SizeConfig.tablet
                      ? MediaQuery.of(context).size.height * .1
                      : MediaQuery.of(context).size.height * .17,
                  left: 0,
                  right: 0,
                  child: const CircleAvatar(
                    radius: 35,
                  ))
            ],
          ),
        )
      ],
    );
  }
}

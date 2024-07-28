import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/order2/presention/view/widget/buttomshowdetails.dart';
import 'package:pett_peaces/fetures/order2/presention/view/widget/header.dart';
import 'package:pett_peaces/fetures/order2/presention/view/widget/infoandheader.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class BodyBookting extends StatelessWidget {
  final UserEntitymodel userEntitymodel;

  const BodyBookting({super.key, required this.userEntitymodel});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: headerBookting(),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: iteambooktin(
                userEntitymodel: userEntitymodel,
              ),
            ),
          ))
        ],
      ),
    );
  }
}

class iteambooktin extends StatelessWidget {
  const iteambooktin({
    super.key,
    required this.userEntitymodel,
  });
  final UserEntitymodel userEntitymodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24),
        child: Column(
          children: [
            const headerordersection(),
            const SizedBox(
              height: 20,
            ),
            const infoorder(),
            buttomshowdetails(
              userEntitymodel: userEntitymodel,
            )
          ],
        ),
      ),
    );
  }
}

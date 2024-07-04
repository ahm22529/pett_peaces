import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/customcard.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/headerdetailes.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/summary.dart';

class BodyDetails extends StatelessWidget {
  const BodyDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          const Column(
            children: [
              Headerdetailes(),
              summary(),
            ],
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * .37,
              right: 5,
              child: Image.asset("Asset/image/pawprint 8.png")),
          Positioned(
              right: 20,
              top: MediaQuery.of(context).size.height * .4,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomCard(),
              ))
        ],
      ),
    );
  }
}

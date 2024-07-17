import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/descriptio.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/infodetailes.dart';

class Bodysellerandbuyerdetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "Asset/image/seller.png",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              const description(),
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .01,
            right: 5,
            child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Image.asset("Asset/image/Back.png")),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * .08,
            right: 5,
            child: infoa(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/infoanmiles.dart';

class Anmmalesme extends StatelessWidget {
  const Anmmalesme({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          alignment: Alignment.center,
          image: AssetImage(
              "Asset/image/Frame 1000004356.png"), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
        child: FittedBox(
          child: Row(
            children: [
              SizedBox(
                child: Image.asset(
                  "Asset/image/dooo.png",
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.0, vertical: 16),
                child: informationanmiles(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class informationanmiles extends StatelessWidget {
  const informationanmiles({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .46,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InfoAnmales(
            tt: "روز",
          ),
          const SizedBox(
            height: 8,
          ),
          const InfoAnmales(
            tt: "روز",
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .42,
            child: const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: InfoAnmales1(
                    tt: "ذكر",
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 2,
                  child: InfoAnmales1(
                    tt: "3 سنوات",
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

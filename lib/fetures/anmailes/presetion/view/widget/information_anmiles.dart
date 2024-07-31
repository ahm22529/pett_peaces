import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/info_anmiles.dart';

class Informationanmiles extends StatelessWidget {
  const Informationanmiles({super.key, required this.widget});
  final Widget widget;
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
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * .43, child: widget),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}

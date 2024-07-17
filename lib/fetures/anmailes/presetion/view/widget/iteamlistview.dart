import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/butom.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/infoanmiles.dart';

class iteamlistviewami extends StatelessWidget {
  const iteamlistviewami({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0.0),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadiusDirectional.all(Radius.circular(10)),
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
                    height: MediaQuery.of(context).size.height * .25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23.0, vertical: 0),
                  child: informationanmiles(
                    widget: widget,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class informationanmiles extends StatelessWidget {
  const informationanmiles({super.key, required this.widget});
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

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pett_peaces/fetures/anmailes/presetion/view/widget/butom.dart';
import 'package:pett_peaces/fetures/home/domain/entity/anmiles_entity.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/infoanmiles.dart';

class iteamlistviewami extends StatelessWidget {
  const iteamlistviewami(
      {super.key, required this.widget, required this.animel});
  final Widget widget;
  final AnmilesEntity animel;
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
                  child: Image.network(
                    animel.imagee,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * .25,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 23.0, vertical: 0),
                  child: informationanmiles(
                    widget: widget,
                    animel: animel,
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
  const informationanmiles(
      {super.key, required this.widget, required this.animel});
  final Widget widget;
  final AnmilesEntity animel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .46,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoAnmales(
            tt: animel.namee,
          ),
          const SizedBox(
            height: 8,
          ),
          InfoAnmales(
            tt: animel.des,
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .42,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: InfoAnmales1(
                    tt: animel.gendere,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Expanded(
                  flex: 2,
                  child: InfoAnmales1(
                    tt: animel.agee.toString(),
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

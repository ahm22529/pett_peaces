import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 9),
        child: Row(
          children: [
            SizedBox(
              height: 110,
              child: Image.asset(
                  "Asset/image/adorable-cat-relaxing-indoors-removebg-preview 1.png"),
            ),
            const Column(
              children: [
                InfoAnmales(
                  tt: "روز",
                ),
                SizedBox(
                  height: 8,
                ),
                InfoAnmales(
                  tt: "روز",
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    InfoAnmales1(
                      tt: "ذكر",
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InfoAnmales1(
                      tt: "3 سنوات",
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

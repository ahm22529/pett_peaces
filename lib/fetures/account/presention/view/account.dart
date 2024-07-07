import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombackground.dart';

class Acountff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Custombackground(
        image: 'Asset/image/حسابي.png',
        wideget: BodyAccount(),
      ),
    );
  }
}

class BodyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "Asset/image/fristaccount.png"), // Replace with your image asset
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: SafeArea(
                child: Text(
                  "حسابي",
                  style: AppStyles.styleRegular24(context)
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        height: 25,
                        color: Color(0xffFDDCBF),
                        child: Image.asset("Asset/image/pawprint 8.png")),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      "حيواناتي",
                      style: AppStyles.styleRegular16(context).copyWith(
                          fontWeight: FontWeight.w500, color: Colors.black),
                    ),
                    Spacer(),
                    Container(
                        color: Colors.white,
                        child: Image.asset("Asset/image/mingcute_up-line.png"))
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

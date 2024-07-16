import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/body.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/hatag.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/iteamcontiner.dart';

import '../../../../../core/utiles/sttyel.dart';

class informationcontiner extends StatelessWidget {
  const informationcontiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: MediaQuery.of(context).size.height * .23,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: const bodyofcontinertwo(),
        ),
      ),
    );
  }
}

class bodyofcontinertwo extends StatelessWidget {
  const bodyofcontinertwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // صف يحتوي على عناصر صغيرة وتاريخ
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(
                    3,
                    (index) => const Padding(
                          padding: EdgeInsets.all(20),
                          child: ItemContainer(),
                        )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "منذ يومين",
                  style: AppStyles.styleMedium12(context)
                      .copyWith(color: const Color(0xff8A8A8A)),
                ),
              ),
            ],
          ),

          ...List.generate(
              3,
              (index) =>  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: GestureDetector(
                      onTap: () => Navigator.push(context,MaterialPageRoute(builder: (builder)=>Hastag())),
                      child: Bodyofheader()),
                  )),
        ],
      ),
    );
  }
}

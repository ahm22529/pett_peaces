import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/exambel_details_enity.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/body.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/iteam_continer.dart';

import '../../../../../core/utiles/sttyel.dart';

class Informationcontiner extends StatelessWidget {
  const Informationcontiner({
    super.key,
    required this.examel,
  });
  final ExambelEnitydetails examel;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: MediaQuery.of(context).size.height * .28,
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
          child: bodyofcontinertwo(
            examel: examel,
          ),
        ),
      ),
    );
  }
}

class bodyofcontinertwo extends StatelessWidget {
  const bodyofcontinertwo({
    super.key,
    required this.examel,
  });
  final ExambelEnitydetails examel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          // صف يحتوي على عناصر صغيرة وتاريخ
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(
                    examel.tag.length > 3 ? 3 : examel.tag.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: FittedBox(
                      child: CustomContainerButton(
                        titel: examel
                            .tag[index], // استخدم العنصر الحالي من القائمة
                        onPressed: () {},
                      ),
                    ),
                  );
                }),
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

          Bodyofheader(
            contact: examel.contant,
            examel: examel,
            screensize: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}

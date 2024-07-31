import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/domain/entity/exambel_details_enity.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/body_hastag.dart';

class Hastag extends StatelessWidget {
  final ExambelEnitydetails examel;

  const Hastag({super.key, required this.examel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Image.asset("Asset/image/Back.png")),
            SizedBox(
              width: MediaQuery.of(context).size.width * .23,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: Color(0xffFFE2C9),
                  borderRadius: BorderRadius.circular(6)),
              child: Text(
                "طعام",
                style: AppStyles.styleMedium16(context).copyWith(
                    color: Color(0xffF78E32),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
      body: BodyHatage(),
    );
  }
}

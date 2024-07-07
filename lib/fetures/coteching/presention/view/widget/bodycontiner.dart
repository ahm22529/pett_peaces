import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/continerbuttom.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/namedandstuts.dart';

class BodyCotactcoting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .07,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: customAppbar(),
          ),
          const SizedBox(
            height: 24,
          ),
          Image.asset("Asset/image/cotecdetails.png"),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: nameandstuts(),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، تولد مثل هذا النص أو العديد من النصوص الأخرىهذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى",
              style: AppStyles.styleRegular14(context)
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const Spacer(), // Adds space between the text and the button
          const continerbuttom(),
          const SizedBox(height: 16), // Add some space at the bottom if needed
        ],
      ),
    );
  }
}

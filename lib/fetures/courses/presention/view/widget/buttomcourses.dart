import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/wayofpay.dart';

class Custombuttomcours extends StatelessWidget {
  const Custombuttomcours(
      {super.key, required this.titel, required this.onPressed});
  final String titel;
  final void Function()? onPressed;
//  @override
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xffF78E32),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(28), // Adjust the radius as needed
          ),
        ),
        child: Text(
          titel,
          style: AppStyles.stylesemi20(context)
              .copyWith(color: const Color(0xffFFFFFF)),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class Custombuttom extends StatelessWidget {
  const Custombuttom({super.key, required this.titel, required this.onPressed});
  final String titel;
  final void Function()? onPressed;
//  @override
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: const Color(0xffF78E32),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(12), // Adjust the radius as needed
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

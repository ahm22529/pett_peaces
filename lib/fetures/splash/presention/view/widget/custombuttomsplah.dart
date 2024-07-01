import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class CustombuttomSplash extends StatelessWidget {
  const CustombuttomSplash({super.key});

//  @override
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * .15),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xffF78E32),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(25), // Adjust the radius as needed
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                  height: 40,
                  child: SvgPicture.asset("Asset/image/Frame 1000004352.svg")),
              const SizedBox(
                width: 20,
              ),
              Text(
                "أبدا الآن",
                style: AppStyles.stylesemi20(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

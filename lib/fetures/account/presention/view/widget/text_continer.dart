import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class TextContiner extends StatelessWidget {
  const TextContiner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
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
    );
  }
}

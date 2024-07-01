import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/splash/presention/view/widget/custombuttomsplah.dart';

class BodySplahView extends StatelessWidget {
  const BodySplahView({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
                "Asset/image/red-white-cat-i-white-studio__1_-removebg-preview (1) 1.png"),
          ),
          const SizedBox(
            height: 36,
          ),
          Text(
            "اعتني بحيوانك الأليف",
            style: AppStyles.styleRegular24(context),
          ),
          const SizedBox(
            height: 36,
          ),
          Text(
            "  اكتشف عالماً من العناية الكاملة بحيواناتكم\n الأليفة من خدمات طبية إلى سكن مريح وآمن.",
            style: AppStyles.styleRegular16(context),
          ),
          const SizedBox(
            height: 36,
          ),
          const Row(
            children: [
              CustombuttomSplash(),
            ],
          )
        ],
      ),
    );
  }
}

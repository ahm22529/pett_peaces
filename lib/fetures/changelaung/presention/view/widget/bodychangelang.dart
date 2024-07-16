import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/changelaung/presention/view/widget/bottom.dart';
import 'package:pett_peaces/fetures/changelaung/presention/view/widget/iteamlang.dart';

class BodyChangeLang extends StatefulWidget {
  const BodyChangeLang({
    super.key,
  });

  @override
  State<BodyChangeLang> createState() => _BodyChangeLangState();
}

class _BodyChangeLangState extends State<BodyChangeLang> {
  bool isArabic = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 32,
          ),
          Text(
            "أختر اللغة",
            style: AppStyles.styleMedium18(context)
                .copyWith(fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            "أختر اللغة التي تريد المتابعة في التطبيق بها",
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isArabic = true;
                    });
                  },
                  child: IteamChange(
                    img: 'Asset/image/svgexport-17 (2) 1.png',
                    text: 'عربي',
                    isActive: isArabic,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isArabic = false;
                    });
                  },
                  child: IteamChange(
                    img: 'Asset/image/svgexport-17 (3) 1.png',
                    text: 'English',
                    isActive: !isArabic,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          const buttom(),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/changelaung/presention/view/widget/bottom.dart';
import 'package:pett_peaces/fetures/changelaung/presention/view/widget/iteamlang.dart';

class bodychangelang extends StatefulWidget {
  const bodychangelang({
    super.key,
  });

  @override
  State<bodychangelang> createState() => _bodychangelangState();
}

class _bodychangelangState extends State<bodychangelang> {
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
            " أختر اللغة التي تريد المتابعة في التطبيق بها",
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 32,
          ),
          const Row(
            children: [
              Expanded(
                child: IteamChange(
                  img: 'Asset/image/svgexport-17 (2) 1.png',
                  text: 'عربي',
                  isActive: true,
                ),
              ),
              const Expanded(
                child: IteamChange(
                  img: 'Asset/image/svgexport-17 (2) 1.png',
                  text: 'English',
                  isActive: false,
                ),
              ),
            ],
          ),
          Spacer(),
          buttom(),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

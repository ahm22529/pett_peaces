import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/custombuttom.dart';
import 'package:pett_peaces/fetures/login/presenrtion/view/widget/customtextfiled.dart';
import 'package:pett_peaces/fetures/singup/presention/view/eidget/continertextfiledcontry.dart';

class Mydata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("Asset/image/Back.png"),
        title: Text(
          " بياناتي",
          style: AppStyles.styleRegular24(context)
              .copyWith(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: BodyMyData(),
    );
  }
}

class BodyMyData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              const Center(
                  child: CircleAvatar(
                backgroundImage: AssetImage("Asset/image/Ellipse 892.png"),
                radius: 55,
              )),
              Positioned(
                  top: 0,
                  right: -15,
                  left: 100,
                  child: Image.asset("Asset/image/edit rectangle.png"))
            ],
          ),
          Text(
            "    الأسم بالكامل      ",
            style: AppStyles.styleMedium16(context).copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const TextFieldWithShadow(),
          const SizedBox(
            height: 16,
          ),
          Text(
            "    البريد الإلكتروني      ",
            style: AppStyles.styleMedium16(context).copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const TextFieldWithShadow(),
          const SizedBox(
            height: 16,
          ),
          Text(
            "    الهاتف       ",
            style: AppStyles.styleMedium16(context).copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const ContinerTextFiled(),
          SizedBox(
            height: 32,
          ),
          Row(
            children: [Custombuttom(titel: "تاكيد", onPressed: () {})],
          )
        ],
      ),
    );
  }
}

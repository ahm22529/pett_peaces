import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pett_peaces/fetures/serviecs/presention/view/widget/customgridview.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';

class Services extends StatelessWidget {
  const Services({super.key, required this.userEntitymodel});
  final UserEntity userEntitymodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * .06),
          const Text(
            'ابحث عن أي خدمة تحتاجها \nلحيواناتك الأليفة',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Color(0xFF020202),
              height: 1.4,
            ),
          ),
          const SizedBox(height: 30.0),
          CustomGridViewServ(
            userEntitymodel: userEntitymodel,
          ),
        ],
      ),
    );
  }
}

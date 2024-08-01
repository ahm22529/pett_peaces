import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/hotels/domain/entity/aboutus_entity.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/googe_lmaps.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/emailand_phone.dart';

class Informationaboutus extends StatelessWidget {
  final HotelEntity hotelEntity;

  const Informationaboutus({super.key, required this.hotelEntity});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 22,
        ),
        Text(
          hotelEntity.ser[0].des,
          style: AppStyles.styleRegular14(context)
              .copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16,
        ),
        emailandphone(
          titel: hotelEntity.ser[0].emai,
          imagee: 'Asset/image/mail.png',
        ),
        const SizedBox(
          height: 12,
        ),
        emailandphone(
          titel: hotelEntity.ser[0].phonr,
          imagee: "Asset/image/call.png",
        ),
        const googelmapsContiner()
      ],
    );
  }
}

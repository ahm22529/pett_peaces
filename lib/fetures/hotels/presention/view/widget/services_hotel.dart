import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/hotels/domain/entity/aboutus_entity.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/service_siteam.dart';

class ServicesHotel extends StatelessWidget {
  const ServicesHotel({super.key, required this.hotelEntity});
  final HotelEntity hotelEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          "أسعار الخدمات",
          style: AppStyles.styleMedium18(context)
              .copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16,
        ),
        Expanded(
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: hotelEntity.ser[0].ser.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: servicesIteam(
                          img: hotelEntity.ser[0].ser[index].imagee,
                          name: hotelEntity.ser[0].ser[index].servacename,
                          price: hotelEntity.ser[0].ser[index].pric),
                    )))
      ],
    );
  }
}

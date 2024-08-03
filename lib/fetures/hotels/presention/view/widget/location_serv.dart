import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sizeconfig.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/location.dart';
import 'package:pett_peaces/fetures/hotels/domain/entity/aboutus_entity.dart';
import 'package:pett_peaces/fetures/hotels/presention/view/widget/tabbar.dart';

class Locationser extends StatelessWidget {
  const Locationser({
    super.key,
    required this.name,
    required this.adderss,
    required this.hotelEntity,
  });
  final String name, adderss;
  final HotelEntity hotelEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 30,
        ),
        Text(
          name,
          style: AppStyles.stylesemi20(context).copyWith(color: Colors.black),
        ),
        location(
          adderss: adderss,
        ),
        SizedBox(
            height: MediaQuery.of(context).size.width <= SizeConfig.tablet
                ? MediaQuery.of(context).size.height * .8
                : MediaQuery.of(context).size.height * .3,
            child: ThreeTabBarExample(
              hotelEntity: hotelEntity,
            )),
      ],
    );
  }
}

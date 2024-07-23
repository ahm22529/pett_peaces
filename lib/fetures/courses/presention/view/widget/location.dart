import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/hotels/data/model/hotelresponse/hotelresponse.dart';
import 'package:pett_peaces/fetures/hotels/domain/entity/aboutus_entity.dart';

class location extends StatelessWidget {
  const location({
    super.key,
    required this.adderss,
  });
  final String adderss;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset("Asset/image/location.png"),
      title: Text(adderss, style: AppStyles.styleMedium12(context)),
    );
  }
}

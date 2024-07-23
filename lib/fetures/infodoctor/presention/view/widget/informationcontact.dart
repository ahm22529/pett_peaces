import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/doctor/domain/entity/doctor-details_entity.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/emailandphone.dart';

class informationcontact extends StatelessWidget {
  const informationcontact({
    super.key,
    required this.coatch,
  });
  final DoctorEntitydetails coatch;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 24,
        ),
        Text(
          "نبذة عن الطبيب",
          style: AppStyles.styleMedium16(context)
              .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 16,
        ),
        HtmlWidget(
          coatch.dec,
        ),
        SizedBox(
          height: 16,
        ),
        emailandphone(
          titel: coatch.phone,
          imagee: 'Asset/image/mail.png',
        ),
      ],
    );
  }
}

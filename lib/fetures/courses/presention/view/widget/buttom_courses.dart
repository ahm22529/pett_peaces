import 'package:flutter/material.dart';
import 'package:pett_peaces/core/paymentservices/presention/view/widget/wayof_pay.dart';
import 'package:pett_peaces/fetures/singup/domain/entity/userentity.dart';
import 'package:url_launcher/url_launcher.dart'; // استيراد حزمة url_launcher
import 'package:pett_peaces/core/utiles/sttyel.dart';

class Custombuttomcours extends StatelessWidget {
  const Custombuttomcours(
      {super.key,
      required this.titel,
      required this.onPressed,
      required this.userEntitymodel});
  final String titel;
  final UserEntity userEntitymodel;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) => Wayofpay(
                  userEntitymodel: userEntitymodel,
                  endpoint: "courses/1/checkout",
                ));
      },
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xffF78E32),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(28), // Adjust the radius as needed
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Text(
          titel,
          style: AppStyles.stylesemi20(context)
              .copyWith(color: const Color(0xffFFFFFF)),
        ),
      ),
    );
  }
}

// دالة لفتح الرابط باستخدام url_launcher
Future<void> _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

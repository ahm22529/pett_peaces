import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart'; // استيراد حزمة url_launcher
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/courses/presention/manger.dart/cubit/checkout_cubit.dart';

class Custombuttomcours extends StatelessWidget {
  const Custombuttomcours(
      {super.key, required this.titel, required this.onPressed});
  final String titel;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocConsumer<CheckoutCubit, CheckoutState>(
        listener: (context, state) {
          if (state is Checkoutsucess) {
            final url =
                "https://accept.paymob.com/unifiedcheckout/?publicKey=egy_pk_test_DioQ0lSKufyfLk0jJ9nDNFSlYCzwqbgE&clientSecret=egy_csk_test_7ccc27d4fc92e4604af6d1949eafc20d"; // افترض أن `Checkoutsucess` يحتوي على `url`
            _launchURL(url);
          }
        },
        builder: (context, state) {
          return TextButton(
            onPressed: () {
              BlocProvider.of<CheckoutCubit>(context).getcheckout(
                  endpoint: "courses/1/checkout",
                  token:
                      "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FuaW1hbHMuY29kZWVsbGEuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzIxNzI5MTgwLCJleHAiOjE3MjIzMzM5ODAsIm5iZiI6MTcyMTcyOTE4MCwianRpIjoiaVlGVUo1YUNyYmkyM3BJaSIsInN1YiI6IjExMSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.yJxudx1ukppdJb_jxGuRx7zoC_f3L3eUQ8HZxDL8Mjw",
                  data: {"payment_type": "card"});
            },
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xffF78E32),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(28), // Adjust the radius as needed
              ),
            ),
            child: Text(
              titel,
              style: AppStyles.stylesemi20(context)
                  .copyWith(color: const Color(0xffFFFFFF)),
            ),
          );
        },
      ),
    );
  }

  // دالة لفتح الرابط باستخدام url_launcher
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

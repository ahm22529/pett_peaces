import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/newpassword/presention/view/widget/body_news_password.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/back_ground_continer.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/custom_divider.dart';

class Shape extends StatelessWidget {
  const Shape({
    super.key, required this.email, required this.optl,
  });
  final String email, optl;
  @override
  Widget build(BuildContext context) {
    return BackGroundRest(
      widget: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const Customdivider(color: Color(0xffD9D9D966)),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child:  BodyNewsPassword(opt: optl, email: email,)),
                Customdivider(
                  color: Colors.orange.withOpacity(.5),
                ),
              ],
            ),
          ),
        ),
      ),
      pos: MediaQuery.of(context).size.height * .2,
    );
  }
}

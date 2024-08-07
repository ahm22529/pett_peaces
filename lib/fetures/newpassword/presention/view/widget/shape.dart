import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/newpassword/presention/view/widget/bodynewspassword.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/backgroundcontiner.dart';
import 'package:pett_peaces/fetures/restpassword/presention/view/widget/customdivider.dart';

class Shape extends StatelessWidget {
  const Shape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return backgroundrest(
      widget: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                customdivider(color: Color(0xffD9D9D966)),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: BodyNewsPassword()),
                customdivider(
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

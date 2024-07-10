import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/chatdetails/presention/chatdetails.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/iteammassege.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/continertextfiled.dart';

class BodyMassege extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 73,
        ),
        const customAppbar(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: continertextfiled(
            name: "ابحث عن شخص",
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(bottom: 1.0),
                      child: GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => Chatdetails())),
                          child: iteammassage()),
                    )))
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/core/utiles/widget/customappbar.dart';
import 'package:pett_peaces/fetures/infodoctor/presention/view/widget/contact.dart';
import 'package:pett_peaces/fetures/masssege/presention/view/widget/iteammassege.dart';

class Notifactin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyNotifaction(),
    );
  }
}

class BodyNotifaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          customAppbar(name: "الاشعارات"),
          Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 2.0),
                        child: iteamnotif(),
                      ))),
        ],
      ),
    );
  }
}

class iteamnotif extends StatelessWidget {
  const iteamnotif({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffE6E6E6),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: ListTile(
          leading: Image.asset(
              "Asset/image/view-building-with-cartoon-style-architecture__1_-removebg-preview 1.png"),
          trailing: Text(
            "اليوم",
            style: AppStyles.styleRegular14(context),
          ),
          title: Text(
            "تم حجز الفندق بنجاح",
            style: AppStyles.styleMedium16(context)
                .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
          ),
          subtitle: Text(
            "تم الحجز بنجاج يرجي التوجه الي الفندق في المعاد ",
            style: AppStyles.styleMedium12(context),
            maxLines: 2,
          ),
        ),
      ),
    );
  }
}

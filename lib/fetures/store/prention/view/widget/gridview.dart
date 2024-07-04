import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/home/presention/view/widget/iteamstore.dart';
import 'package:pett_peaces/fetures/store/prention/view/widget/detailes.dart';

class CustomGridViewstore extends StatelessWidget {
  const CustomGridViewstore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 9,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // عدد الأعمدة
        mainAxisSpacing: 10, // التباعد الرأسي
        crossAxisSpacing: 5, // التباعد الأفقي
        childAspectRatio: 3 / 4, // نسبة العرض إلى الارتفاع
      ),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (builder) => DetailesView())),
            child: IteamStore());
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/sellerdetails.dart';
import 'package:pett_peaces/fetures/bayandseller/presention/view/widget/bodyseller.dart';

class bodysellerandbuyer extends StatelessWidget {
  const bodysellerandbuyer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 10,
        crossAxisSpacing: MediaQuery.of(context).size.width >= 410 ? 10 : 0,
        crossAxisCount: 2,
        childAspectRatio: 168 / 175, // نسبة العرض إلى الارتفاع
      ),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (builder) => Sellerdetails())),
            child: BodySeller());
      },
    );
  }
}

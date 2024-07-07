import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/coteching/presention/view/widget/availael.dart';

class doctorestatus extends StatelessWidget {
  const doctorestatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(color: Color(0xffFFFFFF).withOpacity(.5)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "محمد أحمد علي",
                style: AppStyles.styleRegular14(context),
              ),
              avalibal(),
            ],
          ),
        ),
      ),
    );
  }
}

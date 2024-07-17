import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class servicesIteam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Color(0xff3A599C).withOpacity(.8),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: SizedBox(
                height: 24,
                child: Image.asset("Asset/image/health-report (1) 1.png")),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Text("رعاية طبيبة",
            style: AppStyles.styleMedium16(context)
                .copyWith(color: Colors.black, fontWeight: FontWeight.w600)),
        Spacer(),
        Text(
          " 20\$",
          style: AppStyles.styleMedium16(context)
              .copyWith(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "رعاية طبيبة",
          style: AppStyles.styleMedium12(context)
              .copyWith(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

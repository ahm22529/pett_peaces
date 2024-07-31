import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class servicesIteam extends StatelessWidget {
  final String img, name, price;

  const servicesIteam(
      {super.key, required this.img, required this.name, required this.price});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: const Color(0xff3A599C).withOpacity(.8),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: SizedBox(height: 24, child: Image.network(img)),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(name,
            style: AppStyles.styleMedium16(context)
                .copyWith(color: Colors.black, fontWeight: FontWeight.w600)),
        const Spacer(),
        Text(
          price,
          style: AppStyles.styleMedium16(context)
              .copyWith(fontWeight: FontWeight.w600, color: Colors.black),
        ),
        const SizedBox(
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
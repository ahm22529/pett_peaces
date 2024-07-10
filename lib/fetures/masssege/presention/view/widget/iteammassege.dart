import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class iteammassage extends StatelessWidget {
  const iteammassage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffE6E6E6),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: ListTile(
          leading: const CircleAvatar(
            radius: 35,
          ),
          trailing: Text(
            "اليوم",
            style: AppStyles.styleRegular14(context),
          ),
          title: Text(
            "د/أحمد محمد غالي",
            style: AppStyles.styleMedium16(context)
                .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
          ),
          subtitle: Text(
            "احتاج الي التواصل معك مباشر حتي احتاج الي التواصل معك مباشر حتي ....................احتاج الي التواصل معك مباشر حتي ....................",
            style: AppStyles.styleMedium12(context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class informtionorderiteam extends StatelessWidget {
  const informtionorderiteam({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "طعام يوناني الاصل ",
          style: AppStyles.styleMedium18(context)
              .copyWith(fontWeight: FontWeight.w600),
        ),
        Text(
          "1200g",
          style: AppStyles.styleMedium12(context),
        ),
      ],
    );
  }
}

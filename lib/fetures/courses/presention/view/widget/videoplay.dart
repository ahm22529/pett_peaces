import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class vidoplay extends StatelessWidget {
  const vidoplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (){},
          child: Image.asset("Asset/image/play.png")),
        const SizedBox(
          width: 5,
        ),
        Column(
          children: [
            Text(
              "فيديو تعريفي",
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            Text(
              "3:20 ",
              style: AppStyles.styleMedium10(context),
            ),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFFE2C9),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
        child: Text(
          "طعام",
          style: AppStyles.styleMedium12(context)
              .copyWith(color: const Color(0xffF78E32)),
        ),
      ),
    );
  }
}

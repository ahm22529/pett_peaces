import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

import 'package:pett_peaces/fetures/box/presention/view/widgwt/cobontextfiled.dart';

class cobeniteam extends StatelessWidget {
  const cobeniteam({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 3,
          child: cobontextfiled(
            name: 'أضف الكوبون هنا',
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xffF78E32)),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 17.0, vertical: 10),
              child: Center(
                child: Text(
                  "تطبيق",
                  style: AppStyles.styleRegular14(context)
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

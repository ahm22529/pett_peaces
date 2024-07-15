import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/box/presention/view/box.dart';

import 'package:pett_peaces/fetures/box/presention/view/widgwt/addmiuns.dart';


class Countiteam extends StatefulWidget {
  @override
  State<Countiteam> createState() => _CountiteamState();
}

class _CountiteamState extends State<Countiteam> {
  int numb = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "299\$",
          style: AppStyles.styleMedium18(context)
              .copyWith(color: const Color(0xffF78E32)),
        ),
        const Spacer(),
        GestureDetector(
            onTap: () => setState(() {
                  numb++;
                }),
            child: AddMiuns(
              iconData: Icons.add,
            )),
        const SizedBox(
          width: 5,
        ),
        Text(numb.toString()),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
            onTap: () {
              setState(() {
                if (numb > 1) {
                  setState(() {
                    numb--;
                  });
                }
              });
            },
            child: AddMiuns(
              iconData: Icons.remove,
            ))
      ],
    );
  }
}
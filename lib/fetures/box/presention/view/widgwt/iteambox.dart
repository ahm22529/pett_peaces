import 'package:flutter/material.dart';

import 'package:pett_peaces/fetures/box/presention/view/widgwt/pricesname.dart';


class IteamBox extends StatefulWidget {
  @override
  State<IteamBox> createState() => _IteamBoxState();
}

class _IteamBoxState extends State<IteamBox> {
  int numberofiteam = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0,vertical: 14),
              child: Image.asset("Asset/image/Frame 1000004370.png"),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: pricevulemname(),
          )
        ],
      ),
    );
  }
}
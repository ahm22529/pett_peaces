import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/profileadvace.dart';
import 'package:pett_peaces/fetures/exapmbeland%20advance/prseebtion/view/widget/headerandbody.dart';

class ListViewAdvanced extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemBuilder: (context, index) => GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (builder) => ProfileAdvance())),
            child: ItemAdvanced()));
  }
}

class ItemAdvanced extends StatelessWidget {
  const ItemAdvanced({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("Asset/image/close-up-hands-holding-device 1.png"),
          const HeaderAndBody(),
          Text(
            "منذ يومين",
            style: AppStyles.styleRegular14(context),
          ),
        ],
      ),
    );
  }
}

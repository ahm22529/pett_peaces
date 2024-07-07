import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/bodyiteamgridview.dart';

class IteamGridViewDoctor extends StatelessWidget {
  const IteamGridViewDoctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage(
              "Asset/image/Frame 1000004256.png"), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
      child: const BodyContinerDoctor(),
    );
  }
}

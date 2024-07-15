import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/infodoctor.dart';
import 'package:pett_peaces/fetures/doctor/presention/view/widget/iteamgridview.dart';

class BodyContinerDoctor extends StatelessWidget {
  const BodyContinerDoctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
            "Asset/image/attractive-young-male-nutriologist-lab-coat-smiling-against-white-background-removebg-preview 1.png",fit: BoxFit.cover,width: MediaQuery.of(context).size.width,),
        Positioned(
            left: 10,
            bottom: 40,
            child: Image.asset("Asset/image/Frame 1000004215.png")),
        Positioned(
          bottom: 0,
          child: InfoDoctore(),
        ),
      ],
    );
  }
}

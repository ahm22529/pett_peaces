import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/videoplay.dart';
import 'package:pett_peaces/fetures/hotels/domain/entity/aboutus_entity.dart';

class header extends StatelessWidget {
  const header({
    super.key,
    required this.video,
    required this.image,
  });
  final String video;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.network(
          image,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Positioned(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset(
                "Asset/image/Back.png",
              )),
        )),
        Positioned(
          bottom: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: VideoPlay(
              video: video,
            ),
          ),
        ),
        Positioned(
            left: 8,
            bottom: -30,
            child: Image.asset("Asset/image/pawprint 8.png"))
      ],
    );
  }
}

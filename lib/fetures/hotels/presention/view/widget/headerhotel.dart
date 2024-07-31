import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/video_play.dart';
import 'package:pett_peaces/fetures/hotels/domain/entity/aboutus_entity.dart';

class Headerhotel extends StatelessWidget {
  const Headerhotel({
    super.key,
    required this.hotelEntity,
  });
  final HotelEntity hotelEntity;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.network(
          hotelEntity.ser[0].image,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Positioned(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset("Asset/image/Back.png")),
        )),
        Positioned(
          bottom: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: VideoPlay(
              video: hotelEntity.ser[0].vido,
            ),
          ),
        ),
        Positioned(
            left: 8,
            bottom: -50,
            child: Image.asset("Asset/image/pawprint 8.png"))
      ],
    );
  }
}

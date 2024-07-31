import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/video_play.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.video,
    required this.image, // يمكنك حذف هذه المعلمة إذا لم تكن بحاجة لها.
  });
  final String video;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned.fill(
          child: VideoPlay(video: video),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset(
                "Asset/image/Back.png",
              ),
            ),
          ),
        ),
        Positioned(
          left: 8,
          bottom: -30,
          child: Image.asset("Asset/image/pawprint 8.png"),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';
import 'package:pett_peaces/fetures/courses/presention/view/widget/video_play.dart';

class Header extends StatefulWidget {
  const Header({
    super.key,
    required this.video,
    required this.image,
  });

  final String video;
  final String image;

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool _isPlaying = false;

  void _togglePlayPause() {
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: VideoPlay(
            video: widget.video,
            onPlayPause: _togglePlayPause, // تمرير دالة رد النداء
          ),
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
          bottom: -20,
          child: Image.asset("Asset/image/pawprint 8.png"),
        ),
        Positioned(
            right: 50,
            bottom: 5,
            child: Text(
              "مده الفيديو  :2:3",
              style: AppStyles.stylesemi20(context),
            ))
      ],
    );
  }
}

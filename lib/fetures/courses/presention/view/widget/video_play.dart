import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlay extends StatefulWidget {
  const VideoPlay({
    super.key,
    required this.video,
    required this.onPlayPause, // دالة رد نداء
  });

  final String video;
  final VoidCallback onPlayPause; // دالة رد نداء

  @override
  VideoPlayState createState() => VideoPlayState();
}

class VideoPlayState extends State<VideoPlay> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      widget.video,
    )..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
      } else {
        _controller.play();
      }
      _isPlaying = !_isPlaying;
      widget.onPlayPause(); // استدعاء دالة رد النداء
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          _controller.value.isInitialized
              ? GestureDetector(
                  onTap: _togglePlayPause,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70),
                    ),
                    child: SizedBox(
                      height: screenHeight,
                      width: screenWidth,
                      child: VideoPlayer(_controller),
                    ),
                  ),
                )
              : Container(
                  color: Colors.black,
                  width: screenWidth,
                  height: screenHeight,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
          // مكان عرض صورة الـ Play
          if (_controller.value.isInitialized)
            Positioned(
              right: 8,
              bottom: -20,
              child: GestureDetector(
                onTap: _togglePlayPause,
                child: Image.asset(
                  _isPlaying
                      ? "Asset/image/play.png" // صورة وقف
                      : "Asset/image/play.png", // صورة تشغيل
                ),
              ),
            ),
        ],
      ),
    );
  }
}

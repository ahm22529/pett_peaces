import 'package:flutter/material.dart';
import 'package:pett_peaces/fetures/hotels/domain/entity/aboutus_entity.dart';
import 'package:video_player/video_player.dart';
import 'package:pett_peaces/core/utiles/sttyel.dart';

class VideoPlay extends StatefulWidget {
  const VideoPlay({super.key, required this.video});
  final String video;

  @override
  _VideoPlayState createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      widget.video, // استبدل هذا برابط الفيديو الفعلي
    )..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _showVideoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
              VideoProgressIndicator(_controller, allowScrubbing: true),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      _controller.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                    ),
                    onPressed: () {
                      setState(() {
                        _controller.value.isPlaying
                            ? _controller.pause()
                            : _controller.play();
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    ).then((_) {
      // أوقف الفيديو عند إغلاق الـ Dialog
      _controller.pause();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => _showVideoDialog(context),
          child: _controller.value.isInitialized
              ? Image.asset(
                  "Asset/image/play.png",
                  width: 50,
                  height: 50,
                )
              : Container(
                  width: 50,
                  height: 50,
                  color: Colors.black,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          color: Color(0xff2222222).withOpacity(.5),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "فيديو تعريفي",
                  style: AppStyles.styleRegular14(context).copyWith(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                Text(
                  "3:20 ",
                  style: AppStyles.styleMedium10(context),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

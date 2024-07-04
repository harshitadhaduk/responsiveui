import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayScreen extends StatefulWidget {
  final String? video;
  const VideoPlayScreen({super.key, this.video});

  @override
  State<VideoPlayScreen> createState() => _VideoPlayScreenState();
}

class _VideoPlayScreenState extends State<VideoPlayScreen> {
  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    super.initState();
    videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse("${widget.video}"))
          ..initialize().then((_) {
            setState(() {});
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            videoPlayerController.value.isInitialized
                ? AspectRatio(
                    aspectRatio: videoPlayerController.value.aspectRatio,
                    child: VideoPlayer(videoPlayerController),
                  )
                : Container(),
            InkResponse(
              onTap: () {
                setState(() {
                  videoPlayerController.value.isPlaying
                      ? videoPlayerController.pause()
                      : videoPlayerController.play();
                });
              },
              child: Icon(
                videoPlayerController.value.isPlaying
                    ? Icons.pause
                    : Icons.play_arrow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

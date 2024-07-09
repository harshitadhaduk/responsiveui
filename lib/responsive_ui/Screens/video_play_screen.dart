import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui/Controller/video_controller.dart';
import 'package:video_player/video_player.dart';

class VideoPlayScreen extends StatefulWidget {
  const VideoPlayScreen({super.key});

  @override
  State<VideoPlayScreen> createState() => _VideoPlayScreenState();
}

class _VideoPlayScreenState extends State<VideoPlayScreen> {
  VideoController videoController = Get.put(VideoController());

  @override
  void initState() {
    super.initState();
    videoController.videoPlay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetBuilder<VideoController>(
          builder: (controller) {
            return Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 300,
                  width: 500,
                  child: VideoPlayer(controller.video!),
                ),
                InkResponse(
                  onTap: () {
                    setState(() {
                      controller.video!.value.isPlaying
                          ? controller.video!.pause()
                          : controller.video!.play();
                    });
                  },
                  child: Icon(
                    controller.video!.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

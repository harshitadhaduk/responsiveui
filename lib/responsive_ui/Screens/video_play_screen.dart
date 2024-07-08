import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui/Controller/video_controller.dart';
import 'package:video_player/video_player.dart';

class VideoPlayScreen extends StatefulWidget {
  final video;
  const VideoPlayScreen({super.key, this.video});

  @override
  State<VideoPlayScreen> createState() => _VideoPlayScreenState();
}

class _VideoPlayScreenState extends State<VideoPlayScreen> {
  VideoController videoController = Get.put(VideoController());
  @override
  void initState() {
    super.initState();
    videoController.initializedVideo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 400,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: VideoPlayer(videoController.videoData[widget.video]!),
        ),
        // child: GetBuilder<VideoController>(
        //   init: VideoController(),
        //   builder: (controller) => ShowVideo(
        //     index: controller.videoData[widget.video],
        //   ),
        //   //     Stack(
        //   //   alignment: Alignment.center,
        //   //   children: [
        //   //     // VideoPlayer(controller.videoData[widget.video]),
        //   //     // InkResponse(
        //   //     //   onTap: () {
        //   //     //     setState(() {
        //   //     //       controller.videoData[widget.video].value.isPlaying
        //   //     //           ? controller.videoData[widget.video].pause()
        //   //     //           : controller.videoData[widget.video].play();
        //   //     //     });
        //   //     //   },
        //   //     //   child: Icon(
        //   //     //     controller.videoData[widget.video].value.isPlaying
        //   //     //         ? Icons.pause
        //   //     //         : Icons.play_arrow,
        //   //     //   ),
        //   //     // ),
        //   //     VideoPlayer(controller.videoData[0]),
        //   //     InkResponse(
        //   //       onTap: () {
        //   //         setState(() {
        //   //           controller.videoData[0].value.isPlaying
        //   //               ? controller.videoData[0].pause()
        //   //               : controller.videoData[0].play();
        //   //         });
        //   //       },
        //   //       child: Icon(
        //   //         controller.videoData[0].value.isPlaying
        //   //             ? Icons.pause
        //   //             : Icons.play_arrow,
        //   //       ),
        //   //     ),
        //   //   ],
        //   // ),
        // ),
      ),
    );
  }
}

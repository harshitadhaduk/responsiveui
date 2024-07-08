import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui/Controller/video_controller.dart';
import 'package:video_player/video_player.dart';

class ShowVideo extends StatefulWidget {
  final VideoPlayerController? index;
  const ShowVideo({super.key, this.index});

  @override
  State<ShowVideo> createState() => _ShowVideoState();
}

class _ShowVideoState extends State<ShowVideo> {
  VideoController controller = Get.put(VideoController());

  @override
  void initState() {
    super.initState();
    controller.initializedVideo();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 0.2 * height,
          width: 0.4 * width,
          child: VideoPlayer(widget.index!),
        ),
        InkResponse(
          onTap: () {
            setState(() {
              widget.index!.value.isPlaying
                  ? widget.index!.pause()
                  : widget.index!.play();
            });
          },
          child: Icon(
            widget.index!.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ],
    );
  }
}

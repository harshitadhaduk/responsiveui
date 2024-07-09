import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui/Controller/video_controller.dart';

class DownCommonButton extends StatefulWidget {
  final top;
  final bottom;
  final left;
  final right;
  final iconSize;
  const DownCommonButton(
      {super.key, this.top, this.bottom, this.left, this.right, this.iconSize});

  @override
  State<DownCommonButton> createState() => _DownCommonButtonState();
}

class _DownCommonButtonState extends State<DownCommonButton> {
  VideoController videoController = Get.put(VideoController());
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: widget.bottom,
      left: widget.left,
      top: widget.top,
      right: widget.right,
      child: InkResponse(
        onTap: () {
          videoController.scrollController
              .jumpTo(videoController.scrollController.offset + 70);
        },
        child: Icon(
          Icons.arrow_drop_down,
          size: widget.iconSize,
        ),
      ),
    );
  }
}

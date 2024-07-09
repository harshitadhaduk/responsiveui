import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui/Controller/video_controller.dart';

class UpCommonButton extends StatefulWidget {
  final top;
  final bottom;
  final left;
  final right;
  final iconSize;

  const UpCommonButton({
    super.key,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.iconSize,
  });

  @override
  State<UpCommonButton> createState() => _UpCommonButtonState();
}

class _UpCommonButtonState extends State<UpCommonButton> {
  VideoController videoController = Get.put(VideoController());
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: widget.left,
      top: widget.top,
      bottom: widget.bottom,
      right: widget.right,
      child: InkResponse(
        onTap: () {
          videoController.scrollController
              .jumpTo(videoController.scrollController.offset - 70);
        },
        child: Icon(
          Icons.arrow_drop_up,
          size: widget.iconSize,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui/Controller/video_controller.dart';

class FirstCommonButton extends StatefulWidget {
  final IconData? icon;
  const FirstCommonButton({super.key, this.icon});

  @override
  State<FirstCommonButton> createState() => _FirstCommonButtonState();
}

class _FirstCommonButtonState extends State<FirstCommonButton> {
  VideoController videoController = Get.put(VideoController());
  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {},
      onHover: (value) {
        videoController.isHover.value = value;
      },
      radius: 20,
      hoverColor: Colors.grey.withOpacity(0.4),
      child: Icon(widget.icon),
    );
  }
}

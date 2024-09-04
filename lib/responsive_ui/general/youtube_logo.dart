import 'package:flutter/material.dart';

class YoutubeLogo extends StatefulWidget {
  final double? textSize;
  const YoutubeLogo({super.key, this.textSize});

  @override
  State<YoutubeLogo> createState() => _YoutubeLogoState();
}

class _YoutubeLogoState extends State<YoutubeLogo> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: 0.01 * width, vertical: 0.003 * height),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(0.01 * height),
          ),
          child: const Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
        Text(
          "YouTube",
          style: TextStyle(
            color: Colors.white,
            fontSize: widget.textSize,
          ),
        ),
      ],
    );
  }
}

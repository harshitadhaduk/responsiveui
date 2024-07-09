import 'package:flutter/material.dart';

class ProfileCircle extends StatelessWidget {
  const ProfileCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.purple.shade300,
      child: const Text(
        "H",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

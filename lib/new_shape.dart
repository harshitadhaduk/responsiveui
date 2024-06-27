import 'package:flutter/material.dart';

class NewShape extends StatefulWidget {
  const NewShape({super.key});

  @override
  State<NewShape> createState() => _NewShapeState();
}

class _NewShapeState extends State<NewShape> {
  // fkgkldfg

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Stack(
      //   children: [
      //     Center(
      //       child: ClipPath(
      //         clipper: MyClipper(),
      //         child: Container(
      //           height: 400,
      //           width: 400,
      //           color: Colors.red.shade50,
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       top: 165,
      //       child: ClipPath(
      //         clipper: MyClipper(),
      //         child: Container(
      //           height: 400,
      //           width: 400,
      //           color: Colors.red,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      // body: Center(
      //   child: Stack(
      //     clipBehavior: Clip.none,
      //     children: [
      //       ClipPath(
      //         clipper: MyFirstClipper(),
      //         child: Container(
      //           height: 400,
      //           width: 400,
      //           color: Colors.blue.shade300,
      //         ),
      //       ),
      //       Positioned(
      //         child: ClipPath(
      //           clipper: MySecondClipper(),
      //           child: Container(
      //             height: 400,
      //             width: 400,
      //             color: Colors.blue.withOpacity(0.3),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      body: Center(
        child: ClipPath(
          clipper: MyFirstClipper(),
          child: Container(
            height: 400,
            width: 400,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue.shade400,
                  Colors.blue.shade300,
                  Colors.blue.shade200,
                  Colors.blue.shade100,
                ],
                end: Alignment.bottomLeft,
                begin: Alignment.topRight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();

    //square
    // path.lineTo(0, 0);
    // path.lineTo(400, 0);
    // path.lineTo(400, 400);
    // path.lineTo(0, 400);

    // online design
    // path.moveTo(400, 0);
    // path.lineTo(400, 400);
    // path.lineTo(250, 230);
    // path.lineTo(100, 400);
    // path.lineTo(0, 200);

    //star
    // path.moveTo(200, 0);
    // path.lineTo(300, 150);
    // path.lineTo(400, 150);
    // path.lineTo(300, 270);
    // path.lineTo(400, 400);
    // path.lineTo(200, 330);
    // path.lineTo(0, 400);
    // path.lineTo(100, 270);
    // path.lineTo(0, 150);
    // path.lineTo(100, 150);

    // path.lineTo(0, 0);
    // path.lineTo(400, 0);
    // path.lineTo(400, 300);
    // path.quadraticBezierTo(300, 100, 200, 250);
    // path.quadraticBezierTo(100, 400, 0, 200);

    path.lineTo(0, 0);
    path.lineTo(400, 0);
    path.lineTo(400, 240);
    path.quadraticBezierTo(310, 120, 200, 240);
    path.quadraticBezierTo(75, 370, 0, 330);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}

class MyFirstClipper extends CustomClipper<Path> {
  Path path = Path();

  @override
  Path getClip(Size size) {
    //top design first
    // path.lineTo(0, 0);
    // path.lineTo(400, 0);
    // path.lineTo(400, 170);
    // path.quadraticBezierTo(310, 100, 200, 160);
    // path.quadraticBezierTo(80, 220, 0, 190);

    // path.moveTo(0, 200);
    // path.lineTo(75, 0);
    // path.lineTo(325, 0);
    // path.lineTo(400, 200);
    // path.lineTo(325, 400);
    // path.lineTo(75, 400);

    //bottom design first
    path.moveTo(0, 400);
    path.lineTo(0, 320);
    path.quadraticBezierTo(110, 200, 205, 290);
    path.quadraticBezierTo(300, 380, 400, 240);
    path.lineTo(400, 400);

    // double round = 30.0;
    // path.moveTo(0, size.height * 0.33);
    // path.lineTo(0, size.height - round);
    // path.quadraticBezierTo(0, size.height, round, size.height);
    // path.lineTo(size.width - round, size.height);
    // path.quadraticBezierTo(
    //     size.width, size.height, size.width, size.height - round);
    // path.lineTo(size.width, round * 2);
    // path.quadraticBezierTo(
    //     size.width - 10, round, size.width - round * 1.5, round * 1.5);
    // path.lineTo(round * 0.6, size.height * 0.33 + 0.3);
    // path.quadraticBezierTo(
    //     0, size.height * 0.33, 0, size.height * 0.33 + round);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class MySecondClipper extends CustomClipper<Path> {
  Path path = Path();

  @override
  Path getClip(Size size) {
    //top design second
    path.lineTo(0, 0);
    path.lineTo(400, 0);
    path.lineTo(400, 210);
    path.quadraticBezierTo(270, 230, 200, 130);
    path.quadraticBezierTo(100, 30, 0, 100);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

import 'package:demo/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: whiteBackground, // White background color for the bottom part
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                color: const Color(0xFF1A6CA8),
                // Blue background color for the top curved part
                height: 400,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/img1.png',
                height: 380,
                width: 350,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    path.lineTo(0, h); // Start from the bottom-left corner
    path.quadraticBezierTo(
      w * 0.5,
      h * 0.8, // Adjust this value to control the depth of the curve
      w,
      h, // End at the bottom-right corner
    );
    path.lineTo(w, 0); // Line to the top-right corner
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:demo/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int start = 1000;
    int delay = 800;
    return Scaffold(
      backgroundColor: whiteBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 97.0),
          child: Column(
            children: [
              BounceInDown(
                duration: Duration(milliseconds: start),
                child: const Text(
                  'INNER BALANCE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'RobotoFlex',
                    color: mainBackground,
                    fontSize: 45,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              SlideInLeft(
                duration: Duration(milliseconds: start + delay),
                child: const Text(
                  'Navigate Your Mind, Find Your Balance',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontStyle: FontStyle.italic,
                    color: Color(0xFF000000),
                    fontSize: 20,
                    //fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ZoomIn(
                duration: Duration(milliseconds: 2 * start),
                child: Center(
                  child: Image.asset(
                    'assets/images/img2.png',
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ZoomIn(
                duration: Duration(milliseconds: 2 * start),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: mainBackground,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minimumSize: const Size(217.0, 59.0), // Width and height
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'RobotoFlex',
                      fontWeight: FontWeight.w800,
                      color: Color((0xFFFFFFFF)),
                      fontSize: 24,
                      //fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              ZoomIn(
                duration: Duration(milliseconds: 2 * start),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1A6CA8),
                        fontSize: 15,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        ' Login',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF000000),
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

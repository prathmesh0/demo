import 'package:demo/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Demo());
}

class Demo extends StatelessWidget {
  const Demo({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

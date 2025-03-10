import 'package:flutter/material.dart';
import 'package:kandan/theme/color_theme.dart';
import 'package:kandan/theme/text_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double screenHeight = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: GradientDesign.BlackGradient,
        child: Column(
          children: [
            SizedBox(height: screenHeight / 932 * 440),
            Text(
              'D-n',
              style: KDTextTheme.SplashMain,
            ),
            SizedBox(height: screenHeight / 932 * 330),
            Text(
              'Copyright 2024. D-n All rights reserved.',
              style: KDTextTheme.SplashDesc,
            ),
          ],
        ),
      ),
    );
  }
}

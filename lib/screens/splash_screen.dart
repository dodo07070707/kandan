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
        decoration: BoxDecoration(color: KdColors.NotWhite),
        child: Column(
          children: [
            SizedBox(height: screenHeight / 932 * 390),
            SizedBox(
              height: screenHeight / 932 * 64,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '간',
                    style: KDTextTheme.SplashMain1,
                  ),
                  SizedBox(width: screenWidth / 932 * 5),
                  Text(
                    '단한',
                    style: KDTextTheme.SplashMain2,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight / 932 * 64,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '단',
                    style: KDTextTheme.SplashMain1,
                  ),
                  SizedBox(width: screenWidth / 932 * 5),
                  Text(
                    '어장',
                    style: KDTextTheme.SplashMain2,
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight / 932 * 320),
            Text(
              'Copyright 2025. Kandan All rights reserved.',
              style: KDTextTheme.SplashDesc,
            ),
          ],
        ),
      ),
    );
  }
}

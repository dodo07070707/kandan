import 'package:flutter/material.dart';
import 'package:kandan/theme/color_theme.dart';
import 'package:kandan/theme/text_theme.dart';
import 'package:get/get.dart';
import 'add_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
            SizedBox(height: screenHeight / 844 * 130),
            GestureDetector(
              onTap: () {
                Get.to(() => AddScreen());
              },
              child: Text('추가', style: KDTextTheme.MainMain),
            ),
            SizedBox(height: screenHeight / 844 * 100),
            Container(
              height: screenHeight / 844 * 1,
              width: screenWidth / 390 * 327,
              decoration: BoxDecoration(color: KdColors.NotBlack),
            ),
            SizedBox(height: screenHeight / 844 * 100),
            Text('암기(ENG)', style: KDTextTheme.MainMain),
            SizedBox(height: screenHeight / 844 * 100),
            Container(
              height: screenHeight / 844 * 1,
              width: screenWidth / 390 * 327,
              decoration: BoxDecoration(color: KdColors.NotBlack),
            ),
            SizedBox(height: screenHeight / 844 * 100),
            Text('암기(KOR)', style: KDTextTheme.MainMain),
          ],
        ),
      ),
    );
  }
}

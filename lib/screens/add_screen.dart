import 'package:flutter/material.dart';
import 'package:kandan/theme/color_theme.dart';
import 'package:kandan/theme/text_theme.dart';
import 'package:get/get.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final List<String> _inputList = [];
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  void _saveInputs() {
    String input1 = _controller1.text.trim();
    String input2 = _controller2.text.trim();

    if (input1.isNotEmpty && input2.isNotEmpty) {
      setState(() {
        _inputList.add(input1);
        _inputList.add(input2);
      });
      Get.back();
    } else {
      Get.snackbar(
        '알림',
        '정보를 입력해주세요',
        snackPosition: SnackPosition.TOP,
        duration: const Duration(seconds: 2),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: KdColors.NotWhite),
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth / 390 * 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight / 844 * 72),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back,
                  color: KdColors.NotBlack,
                  size: screenWidth / 390 * 32,
                ),
              ),
              SizedBox(height: screenHeight / 844 * 20),
              Row(
                children: [
                  SizedBox(width: screenWidth / 844 * 10),
                  Text('단어 추가', style: KDTextTheme.Label),
                ],
              ),
              SizedBox(height: screenHeight / 844 * 10),
              Container(
                height: screenHeight / 844 * 1,
                width: screenWidth / 390 * 327,
                decoration: BoxDecoration(color: KdColors.NotBlack),
              ),
              SizedBox(
                height: screenHeight / 844 * 160,
              ),
              SizedBox(
                width: screenWidth / 390 * 326,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth / 390 * 250,
                      child: TextField(
                        controller: _controller1,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: '단어 입력',
                        ),
                        style: KDTextTheme.hintStyle,
                      ),
                    ),
                    SizedBox(height: screenHeight / 844 * 125),
                    SizedBox(
                      width: screenWidth / 390 * 250,
                      child: TextField(
                        controller: _controller2,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: '뜻, 품사 입력',
                        ),
                        style: KDTextTheme.hintStyle,
                      ),
                    ),
                    SizedBox(height: screenHeight / 844 * 150),
                    GestureDetector(
                      onTap: _saveInputs,
                      child: Container(
                        width: screenWidth / 390 * 316,
                        height: screenHeight / 844 * 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: KdColors.NotBlack,
                        ),
                        child: Center(
                          child: Text(
                            '완료',
                            style: KDTextTheme.ButtonStyleBlack,
                          ),
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

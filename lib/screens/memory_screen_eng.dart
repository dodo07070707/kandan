import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:kandan/theme/color_theme.dart';
import 'package:kandan/theme/text_theme.dart';
import 'dart:math';

class MemoryScreenEng extends StatefulWidget {
  @override
  _MemoryScreenEngState createState() => _MemoryScreenEngState();
}

class _MemoryScreenEngState extends State<MemoryScreenEng> {
  List<List<String>> _wordList = [];
  List<String> _input1List = [];
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _loadInput1List();
  }

  void _shuffleWords() {
    setState(() {
      _input1List.shuffle(Random());
    });
  }

  Future<void> _loadInput1List() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? wordListString = prefs.getString('wordList');

    if (wordListString != null) {
      List<dynamic> jsonData = jsonDecode(wordListString);
      _wordList = jsonData.map((item) => List<String>.from(item)).toList();

      // 첫 번째 단어들만 추출하여 저장
      setState(() {
        _input1List = _wordList.map((pair) => pair[0]).toList();
        _input1List.shuffle(Random());
      });
    }
  }

  void _nextWord() {
    if (_currentIndex < _input1List.length - 1) {
      setState(() {
        _currentIndex++;
      });
      _pageController.animateToPage(_currentIndex,
          duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  void _prevWord() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
      });
      _pageController.animateToPage(_currentIndex,
          duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  Future<void> _deleteCurrentWord() async {
    if (_input1List.isEmpty) return;

    String wordToRemove = _input1List[_currentIndex];

    setState(() {
      _input1List.removeAt(_currentIndex);
      _wordList.removeWhere((pair) => pair[0] == wordToRemove);
    });

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('wordList', jsonEncode(_wordList));

    if (_input1List.isEmpty) {
      setState(() {
        _currentIndex = 0;
      });
    } else if (_currentIndex >= _input1List.length) {
      setState(() {
        _currentIndex = _input1List.length - 1;
      });
    }

    _pageController.animateToPage(_currentIndex,
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: KdColors.NotWhite),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth / 390 * 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                  Text('단어 암기 (ENG)', style: KDTextTheme.Label),
                ],
              ),
              SizedBox(height: screenHeight / 844 * 10),
              Container(
                height: screenHeight / 844 * 1,
                width: screenWidth / 390 * 327,
                decoration: BoxDecoration(color: KdColors.NotBlack),
              ),
              SizedBox(
                height: screenHeight / 844 * 570,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _input1List.isNotEmpty ? _input1List.length : 1,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Center(
                      child: Text(
                          _input1List.isNotEmpty
                              ? _input1List[index]
                              : '저장된 단어가 없습니다',
                          style: KDTextTheme.MemorizeWord),
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: _deleteCurrentWord,
                child: Row(
                  children: [
                    Container(
                      width: screenWidth / 390 * 150,
                      height: screenHeight / 844 * 52,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: KdColors.NotWhite,
                          border: Border.all(color: KdColors.NotBlack)),
                      child: Center(
                        child: Text(
                          '삭제',
                          style: KDTextTheme.ButtonStyleWhite,
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth / 390 * 26),
                    GestureDetector(
                      onTap: _nextWord,
                      child: Container(
                        width: screenWidth / 390 * 150,
                        height: screenHeight / 844 * 52,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: KdColors.NotBlack,
                        ),
                        child: Center(
                          child: Text(
                            '다음',
                            style: KDTextTheme.ButtonStyleBlack,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

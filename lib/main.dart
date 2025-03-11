import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kandan/screens/main_screen.dart';
import 'package:kandan/screens/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showSplashScreen = true;
  late Future<List<List<String>>> _wordListFuture;

  @override
  void initState() {
    super.initState();
    _wordListFuture = getList();

    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _showSplashScreen = false;
        });
      }
    });
  }

  Future<List<List<String>>> getList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? wordListString = prefs.getString('wordList');

    if (wordListString != null) {
      List<dynamic> jsonData = jsonDecode(wordListString);
      return jsonData.map((item) => List<String>.from(item)).toList();
    } else {
      return []; // 데이터가 없을 경우 빈 리스트 반환
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Pretendard',
        colorScheme: const ColorScheme.light(
          background: Colors.white,
          brightness: Brightness.light,
        ),
      ),
      home: Scaffold(
        body: _showSplashScreen
            ? const SplashScreen()
            : FutureBuilder<List<List<String>>>(
                future: _wordListFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const SplashScreen();
                  } else {
                    return const SplashScreen();
                  }
                },
              ),
      ),
    );
  }
}

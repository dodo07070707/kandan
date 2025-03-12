import 'package:flutter/material.dart';
import 'package:kandan/theme/color_theme.dart';

abstract class KDTextTheme {
  static final SplashMain1 = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 54,
    color: KdColors.NotBlack,
    fontWeight: FontWeight.w800,
    letterSpacing: 3,
  );
  static final SplashMain2 = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 32,
    color: KdColors.NotBlack,
    fontWeight: FontWeight.w600,
    letterSpacing: 1,
    height: 3,
  );
  static final SplashDesc = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 12,
    color: KdColors.NotBlack,
    fontWeight: FontWeight.w400,
  );
  static final MainMain = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 50,
    color: KdColors.NotBlack,
    fontWeight: FontWeight.w700,
    letterSpacing: 1,
  );
  static final Label = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 20,
    color: KdColors.NotBlack,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.25,
  );
  static final hintStyle = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 30,
    color: KdColors.NotBlack,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.25,
  );
  static final ButtonStyleBlack = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 16,
    color: KdColors.NotWhite,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.25,
  );
  static final ButtonStyleWhite = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 16,
    color: KdColors.NotBlack,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.25,
  );
  static final MemorizeWord = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 40,
    color: KdColors.NotBlack,
    fontWeight: FontWeight.w700,
    letterSpacing: -0.25,
  );
  static final MemorizeWordSub = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 24,
    color: KdColors.NotBlack,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.25,
  );
}

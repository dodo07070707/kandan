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
  static final MainSub = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 20,
    color: Colors.white,
    letterSpacing: -0.8,
    shadows: [
      Shadow(
        blurRadius: 10,
        color: Colors.white.withOpacity(0.7),
        offset: const Offset(0, 0),
      ),
    ],
  );
  static final SettingMenu = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 20,
    color: Colors.white,
    letterSpacing: -0.8,
    shadows: [
      Shadow(
        blurRadius: 10,
        color: Colors.white.withOpacity(0.7),
        offset: const Offset(0, 0),
      ),
    ],
  );
  static final SettingButton = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 12,
    color: Colors.white.withOpacity(0.5),
    letterSpacing: -0.8,
    height: 0.7,
  );
  static final SettingPhrase = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 12,
    color: Colors.white.withOpacity(0.5),
    letterSpacing: -0.8,
    height: 1,
  );
  static final SettingListPhrase = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 12,
    color: Colors.white.withOpacity(0.5),
    letterSpacing: -0.8,
    height: 0.7,
  );
}

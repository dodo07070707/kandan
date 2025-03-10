import 'package:flutter/material.dart';
import 'package:kandan/theme/color_theme.dart';

abstract class KDTextTheme {
  static final SplashMain = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 64,
    color: Colors.white,
    letterSpacing: 2,
    shadows: [
      Shadow(
        blurRadius: 10,
        color: Colors.white.withOpacity(0.7),
        offset: const Offset(0, 0),
      ),
    ],
  );
  static final SplashDesc = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 12,
    color: Colors.white.withOpacity(0.3),
    letterSpacing: 0,
  );
  static final StarthMain = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 19,
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
  static final MainMain = TextStyle(
    fontFamily: 'Pretendard',
    fontSize: 64,
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

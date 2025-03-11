import 'package:flutter/material.dart';

abstract class KdColors {
  static const NotBlack = Color(0xFF121212);
  static const NotWhite = Color(0xFFFAFAFA);
}

abstract class GradientDesign {
  static const BlackGradient = ShapeDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromARGB(255, 51, 51, 51),
        Colors.black,
        Colors.black,
      ],
    ),
    shape: LinearBorder(),
  );
}

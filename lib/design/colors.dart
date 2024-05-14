import 'package:flutter/material.dart';

abstract class ColorStyles {
  ColorStyles._();
  // const ColorStyles(int value) : super(value);

  // 앱 시그니처 컬러
  static const appMainColor = Color(0xff68568e);
  static const appSubColor = Color(0xffb3aac6);
  static const appLightColor = Color(0xffD1CCDD);
  static const appBackgroundColor = Color(0xffF0F0F0);

// 기본 및 알림 색상
  static const gray_dark = Color(0xff424242);
  static const gray_mid = Color(0xff666666);
  static const gray_light = Color(0xfff0f0f0);

// 텍스트 색상
  static const textBlackColor = Color(0xff424242);
  static const textBodyColor = Color(0xff666666);
  static const textDisableColor = Color(0xffD5D5D5);

// 졸업요건 상태
//   static const statusGreen = Color(0xff568A35);
//   static const statusYellow = Color(0xffFFCD4A);
//   static const statusRed = Color(0xffFC5230);
}
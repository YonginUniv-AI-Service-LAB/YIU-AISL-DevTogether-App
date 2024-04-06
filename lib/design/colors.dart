import 'package:flutter/material.dart';

abstract class ColorStyles {
  ColorStyles._();

  // 앱 시그니처 컬러
  static const appMainColor = Color(0xff595c86);
  static const appSubColor = Color(0xff696c96);
  static const appLightColor = Color(0xffD9EDDF);
  static const appBackgroundColor = Color(0xffF0FCF6);

  // 기본 및 알림 색상
  static const lightGrayColor = Color(0xffF1F1F1);
  static const correctColor = Color(0xff0094FF);
  static const errorColor = Color(0xffF56647);

  // 텍스트 색상
  static const textBlackColor = Color(0xff424242);
  static const textBodyColor = Color(0xff666666);
  static const textDisableColor = Color(0xffD5D5D5);
}
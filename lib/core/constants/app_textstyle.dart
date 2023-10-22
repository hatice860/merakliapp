import 'package:flutter/material.dart';
import 'package:flutter_merakli/core/constants/app_color.dart';

class AppTextStyle {
  static TextStyle aksharSemiBold(context) => const TextStyle(
      fontSize: 85,
      color: AppColor.splashTextColor,
      fontWeight: FontWeight.w500,
      fontFamily: "Akshar");
  static TextStyle aksharAppbarTitle(context) => const TextStyle(
    fontSize: 65,
    color: AppColor.appbarTitleColor,
    fontWeight: FontWeight.w500,
    fontFamily: "Akshar"
  );
  static TextStyle regular30(context) => const TextStyle(
      fontSize: 30,
      color: AppColor.splashTextColor,
      fontWeight: FontWeight.w300,
      fontFamily: "Akshar");
  static TextStyle aeonikBold(context) => const TextStyle(
      fontSize: 36,
      color: AppColor.splashTextColor,
      fontWeight: FontWeight.w700,
      fontFamily: "Aeonik");
        static TextStyle aeonikLight(context) => const TextStyle(
      fontSize: 22,
      color: AppColor.splashTextColor,
      fontWeight: FontWeight.w400,
      fontFamily: "AeonikLight");
  static TextStyle aeonikRegular(context) => const TextStyle(
      fontSize: 20,
      color: AppColor.splashTextColor,
      fontWeight: FontWeight.w100,
      fontFamily: "AeonikRegular");
        static TextStyle interTight(context) => const TextStyle(
      fontSize: 28,
      color: Color(0xFF24415C),
      fontWeight: FontWeight.w400,
      fontFamily: "InterTight");
              static TextStyle arialText(context) => const TextStyle(
      fontSize: 20,
      color: Color(0xFF258661),
      fontWeight: FontWeight.w700,
      fontFamily: "Arial");
}

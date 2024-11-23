import 'package:flutter/material.dart';
import 'package:miles_edu_assessment/utils/app_screen_util.dart';

class _AppTextStyles {
  static const TextStyle bold = TextStyle(
    fontWeight: FontWeight.w600,
    //Add the fonts here
  );
  static const TextStyle semiBold = TextStyle(
    fontWeight: FontWeight.w600,
    //Add the fonts here
  );

  static const TextStyle medium = TextStyle(
    fontWeight: FontWeight.w500,
    //Add the fonts here
  );

  static const TextStyle regular = TextStyle(
    fontWeight: FontWeight.w400,
    //Add the fonts here
  );
}

class AppTextStyles {
  static TextStyle style16W400({Color? color}) =>
      _AppTextStyles.regular.copyWith(
        fontSize: 16.textMultiplier,
        color: color,
      );
  static TextStyle style16W500({Color? color}) =>
      _AppTextStyles.medium.copyWith(
        fontSize: 16.textMultiplier,
        color: color,
      );
  static TextStyle style16W600({Color? color}) =>
      _AppTextStyles.semiBold.copyWith(
        fontSize: 16.textMultiplier,
        color: color,
      );
  static TextStyle style18W600({Color? color}) =>
      _AppTextStyles.semiBold.copyWith(
        fontSize: 18.textMultiplier,
        color: color,
      );
  static TextStyle style14W500({Color? color}) =>
      _AppTextStyles.medium.copyWith(
        fontSize: 16.textMultiplier,
        color: color,
      );
  static TextStyle style10W400({Color? color}) =>
      _AppTextStyles.regular.copyWith(
        fontSize: 10.textMultiplier,
        color: color,
      );
  static TextStyle style24W700({Color? color}) => _AppTextStyles.bold.copyWith(
        fontSize: 24.textMultiplier,
        color: color,
      );
  static TextStyle style36W700({Color? color}) => _AppTextStyles.bold.copyWith(
        fontSize: 36.textMultiplier,
        color: color,
      );
  static TextStyle style12W400({Color? color}) =>
      _AppTextStyles.regular.copyWith(
        fontSize: 12.textMultiplier,
        color: color,
      );
  static TextStyle style12W600({Color? color}) =>
      _AppTextStyles.semiBold.copyWith(
        fontSize: 16.textMultiplier,
        color: color,
      );
  static TextStyle style14W400({Color? color}) =>
      _AppTextStyles.regular.copyWith(
        fontSize: 14.textMultiplier,
        color: color,
      );
}

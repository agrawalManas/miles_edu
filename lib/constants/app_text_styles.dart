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

  //----------TO-be-DELETED-------------
  static TextStyle heading1R({Color? color}) => _AppTextStyles.regular.copyWith(
        fontSize: 48.textMultiplier,
        color: color,
      );

  static TextStyle heading2R({Color? color}) => _AppTextStyles.regular.copyWith(
        fontSize: 40.textMultiplier,
        color: color,
      );

  static TextStyle mobileHeading2M({Color? color}) =>
      _AppTextStyles.medium.copyWith(
        fontSize: 24.textMultiplier,
        color: color,
      );
  static TextStyle mobileHeading6M({Color? color}) =>
      _AppTextStyles.medium.copyWith(
        fontSize: 12.textMultiplier,
        color: color,
      );

  static TextStyle heading3R({Color? color}) => _AppTextStyles.regular.copyWith(
        fontSize: 32.textMultiplier,
        color: color,
      );

  static TextStyle heading4R({Color? color}) => _AppTextStyles.regular.copyWith(
        fontSize: 20.textMultiplier,
        color: color,
      );
  static TextStyle mobileHeading4R({Color? color}) =>
      _AppTextStyles.regular.copyWith(
        fontSize: 16.textMultiplier,
        color: color,
      );

  static TextStyle heading5R({Color? color}) => _AppTextStyles.regular.copyWith(
        fontSize: 16.textMultiplier,
        color: color,
      );
  static TextStyle heading5Rmobile({Color? color}) =>
      _AppTextStyles.regular.copyWith(
        fontSize: 14.textMultiplier,
        color: color,
      );

  static TextStyle heading6R({Color? color}) => _AppTextStyles.regular.copyWith(
        fontSize: 14.textMultiplier,
        color: color,
      );

  static TextStyle heading1M({Color? color}) => _AppTextStyles.medium.copyWith(
        fontSize: 48.textMultiplier,
      );

  static TextStyle heading2M({Color? color}) => _AppTextStyles.medium.copyWith(
        fontSize: 40.textMultiplier,
        color: color,
      );

  static TextStyle heading3M({Color? color}) => _AppTextStyles.medium.copyWith(
        fontSize: 32.textMultiplier,
        color: color,
      );

  static TextStyle heading4M({Color? color}) => _AppTextStyles.medium.copyWith(
        fontSize: 20.textMultiplier,
        color: color,
      );
  static TextStyle mobileHeading4M({Color? color}) =>
      _AppTextStyles.medium.copyWith(
        fontSize: 16.textMultiplier,
        color: color,
      );

  static TextStyle heading5M({Color? color, TextDecoration? textDecoration}) =>
      _AppTextStyles.medium.copyWith(
        fontSize: 16.textMultiplier,
        color: color,
        decoration: textDecoration,
      );
  static TextStyle mobileHeading5M(
          {Color? color, TextDecoration? textDecoration}) =>
      _AppTextStyles.medium.copyWith(
        fontSize: 14.textMultiplier,
        color: color,
        decoration: textDecoration,
      );

  static TextStyle heading6M({Color? color}) => _AppTextStyles.medium.copyWith(
        fontSize: 14.textMultiplier,
        color: color,
      );

  static TextStyle heading7M({Color? color}) => _AppTextStyles.medium.copyWith(
        fontSize: 24.textMultiplier,
        color: color,
      );

  static TextStyle body1SemiBold({Color? color}) =>
      _AppTextStyles.semiBold.copyWith(
        fontSize: 20.textMultiplier,
        color: color,
      );

  static TextStyle body2SemiBold({Color? color}) =>
      _AppTextStyles.semiBold.copyWith(
        fontSize: 18.textMultiplier,
        color: color,
      );

  static TextStyle body3SemiBold({Color? color}) =>
      _AppTextStyles.semiBold.copyWith(
        fontSize: 16.textMultiplier,
        color: color,
      );

  static TextStyle body4SemiBold({Color? color}) =>
      _AppTextStyles.semiBold.copyWith(
        fontSize: 14.textMultiplier,
        color: color,
      );

  static TextStyle mobileBody4SemiBold({Color? color}) =>
      _AppTextStyles.semiBold.copyWith(
        fontSize: 10.textMultiplier,
        color: color,
      );

  static TextStyle body1M({Color? color}) => _AppTextStyles.medium.copyWith(
        fontSize: 20.textMultiplier,
        color: color,
      );
  static TextStyle mobileBody1M({Color? color}) =>
      _AppTextStyles.medium.copyWith(
        fontSize: 16.textMultiplier,
        color: color,
      );

  static TextStyle body2M({Color? color}) => _AppTextStyles.medium.copyWith(
        fontSize: 18.textMultiplier,
        color: color,
      );

  static TextStyle mobileBody2M({Color? color}) =>
      _AppTextStyles.medium.copyWith(
        fontSize: 14.textMultiplier,
        color: color,
      );

  static TextStyle mobileBody3M({Color? color}) =>
      _AppTextStyles.medium.copyWith(
        fontSize: 12.textMultiplier,
        color: color,
      );

  static TextStyle body3M({Color? color}) => _AppTextStyles.medium.copyWith(
        fontSize: 16.textMultiplier,
        color: color,
      );

  static TextStyle body4M({Color? color}) => _AppTextStyles.medium.copyWith(
        fontSize: 14.textMultiplier,
        color: color,
      );

  static TextStyle body1R({Color? color, TextDecoration? textDecoration}) =>
      _AppTextStyles.regular.copyWith(
        fontSize: 20.textMultiplier,
        color: color,
        decoration: textDecoration,
      );
  static TextStyle mobileBody1R(
          {Color? color, TextDecoration? textDecoration}) =>
      _AppTextStyles.regular.copyWith(
        fontSize: 16.textMultiplier,
        color: color,
        decoration: textDecoration,
      );

  static TextStyle body2R({Color? color, double? letterSpacing}) =>
      _AppTextStyles.regular.copyWith(
        fontSize: 18.textMultiplier,
        color: color,
        letterSpacing: letterSpacing ?? 0,
      );

  static TextStyle mobileBody2R({Color? color, double? letterSpacing}) =>
      _AppTextStyles.regular.copyWith(
        fontSize: 14.textMultiplier,
        color: color,
        letterSpacing: letterSpacing ?? 0,
      );

  static TextStyle body3R({Color? color, TextDecoration? textDecoration}) =>
      _AppTextStyles.regular.copyWith(
        fontSize: 16.textMultiplier,
        color: color,
        decoration: textDecoration,
      );
  static TextStyle mobileBody3R(
          {Color? color, TextDecoration? textDecoration}) =>
      _AppTextStyles.regular.copyWith(
        fontSize: 12.textMultiplier,
        color: color,
        decoration: textDecoration,
      );

  static TextStyle body4R({Color? color}) => _AppTextStyles.regular.copyWith(
        fontSize: 14.textMultiplier,
        color: color,
      );
  static TextStyle footnote({Color? color}) => _AppTextStyles.regular.copyWith(
        fontSize: 12.textMultiplier,
        color: color,
      );
  static TextStyle body5R({Color? color}) => _AppTextStyles.regular.copyWith(
        fontSize: 12.textMultiplier,
        color: color,
      );
}

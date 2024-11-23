import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_edu_assessment/constants/app_colors.dart';

class AppUtils {
  static Future<void> showBottomSheet({
    required BuildContext context,
    required Widget child,
    bool isScrollControlled = false,
    bool isDismissible = true,
    Color? backgroundColor,
    Color? borderColor,
    double radius = 0,
  }) {
    return showModalBottomSheet<dynamic>(
      context: context,
      backgroundColor: backgroundColor ?? AppColors.neutral01,
      isDismissible: isDismissible,
      isScrollControlled: isScrollControlled,
      // shape: Border(
      //   top: BorderSide(
      //     color: borderColor ?? AppColors.transparent,
      //     width: 2,
      //   ),
      // ),
      shape: OutlineInputBorder(
        borderSide: BorderSide(
          color: borderColor ?? AppColors.transparent,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radius),
          topRight: Radius.circular(radius),
        ),
      ),
      // shape: RoundedRectangleBorder(
      //   side: BorderSide(color: borderColor ?? AppColors.transparent),
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(radius),
      //     topRight: Radius.circular(radius),
      //   ),
      // ),
      builder: (context) {
        return child;
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_edu_assessment/constants/app_colors.dart';
import 'package:miles_edu_assessment/constants/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double verticalPadding;
  final double horizontalPadding;
  final double radius;
  final Color? buttonColor;
  final Color? borderColor;
  final TextStyle? style;
  const CustomButton({
    required this.title,
    required this.onTap,
    this.verticalPadding = 2,
    this.horizontalPadding = 5,
    this.radius = 24,
    this.buttonColor,
    this.borderColor,
    this.style,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding.h,
          horizontal: horizontalPadding.w,
        ),
        decoration: BoxDecoration(
          color: buttonColor ?? AppColors.secondary03,
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Text(
          title,
          style: style ??
              AppTextStyles.style12W600(
                color: AppColors.neutral01,
              ),
        ),
      ),
    );
  }
}

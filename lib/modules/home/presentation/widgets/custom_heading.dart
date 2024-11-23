import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_edu_assessment/constants/app_colors.dart';
import 'package:miles_edu_assessment/constants/app_text_styles.dart';

class CustomHeading extends StatelessWidget {
  final String text;
  const CustomHeading({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            style: AppTextStyles.style16W600(
              color: AppColors.neutral01,
            ),
            maxLines: 1,
          ),
          Expanded(
            flex: 4,
            child: _buildGradientContainer(showGradient: true),
          ),
          6.horizontalSpace,
          Expanded(flex: 2, child: _buildGradientContainer()),
          4.horizontalSpace,
          Expanded(flex: 1, child: _buildGradientContainer()),
        ],
      ),
    );
  }

  Widget _buildGradientContainer({
    double height = 2,
    bool showGradient = false,
  }) {
    return Container(
      height: height.h,
      decoration: BoxDecoration(
        color: AppColors.semantic03,
        borderRadius: BorderRadius.all(Radius.circular(2.r)),
        gradient: (showGradient)
            ? LinearGradient(
                colors: [AppColors.black, AppColors.semantic03],
              )
            : null,
      ),
    );
  }
}

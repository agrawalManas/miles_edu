import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_edu_assessment/constants/app_colors.dart';
import 'package:miles_edu_assessment/constants/app_text_styles.dart';

class TalkToUsBottomsheet extends StatelessWidget {
  const TalkToUsBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          16.verticalSpace,
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.clear,
                color: AppColors.neutral01,
              ),
            ),
          ),
          24.verticalSpace,
          Text(
            'Thank you for showing interest in us!',
            style: AppTextStyles.style16W600(
              color: AppColors.neutral01,
            ),
          ),
          16.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Text(
              'Our SPOC will be connecting with you shortly on your provided contact details.',
              textAlign: TextAlign.center,
              style: AppTextStyles.style14W400(
                color: AppColors.neutral02,
              ),
            ),
          ),
          56.verticalSpace,
        ],
      ),
    );
  }
}

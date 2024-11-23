import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_edu_assessment/constants/app_colors.dart';
import 'package:miles_edu_assessment/constants/app_text_styles.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Flagbearers for',
          style: AppTextStyles.style16W600(
            color: AppColors.neutral01,
          ),
        ),
        4.verticalSpace,
        Text(
          'Accountants!',
          style: AppTextStyles.style18W600(
            color: AppColors.neutral03,
          ),
        ),
        6.verticalSpace,
        Text.rich(
          TextSpan(
            style: AppTextStyles.style12W400(
              color: AppColors.neutral01,
            ),
            children: [
              const TextSpan(text: 'Created with '),
              TextSpan(
                text: '♥️',
                style: AppTextStyles.style12W400(color: AppColors.semantic01),
              ),
              const TextSpan(text: ' at Miles Education'),
            ],
          ),
        ),
      ],
    );
  }
}

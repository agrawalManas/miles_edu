import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_edu_assessment/constants/app_assets.dart';
import 'package:miles_edu_assessment/constants/app_colors.dart';
import 'package:miles_edu_assessment/constants/app_text_styles.dart';
import 'package:miles_edu_assessment/modules/home/presentation/widgets/talk_to_us_bottomsheet.dart';
import 'package:miles_edu_assessment/utils/app_utils.dart';
import 'package:miles_edu_assessment/utils/image_loader.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //---------GREETINGS----------
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning!',
                style: AppTextStyles.style16W400(color: AppColors.neutral01),
              ),
              4.verticalSpace,
              Text(
                'Shivam',
                style: AppTextStyles.style14W500(color: AppColors.neutral01),
              ),
            ],
          ),

          //------------GIF-----------
          Padding(
            padding: EdgeInsets.only(right: 4.w),
            child: InkWell(
              onTap: () {
                AppUtils.showBottomSheet(
                  context: context,
                  radius: 16.r,
                  backgroundColor: AppColors.black,
                  borderColor: AppColors.neutral01,
                  child: const TalkToUsBottomsheet(),
                );
              },
              child: ImageLoader.asset(
                AppAssets.talkToUs,
                height: 38.h,
                width: 115.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

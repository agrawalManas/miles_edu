import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_edu_assessment/constants/app_assets.dart';
import 'package:miles_edu_assessment/constants/app_colors.dart';
import 'package:miles_edu_assessment/utils/image_loader.dart';

class CustomAppBarWithImage extends StatelessWidget
    implements PreferredSizeWidget {
  final VoidCallback onTap;
  const CustomAppBarWithImage({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.black,
      title: ImageLoader.asset(AppAssets.logo, height: 18.h, width: 58.w),
      // actions: [
      //   GestureDetector(
      //     onTap: () {},
      //     child: SizedBox(
      //       height: 20.w,
      //       width: 20.w,
      //       child: ImageLoader.assetSvg(
      //         AppAssets.notification,
      //         height: 20.h,
      //         width: 20.w,
      //       ),
      //     ),
      //   ),
      // ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}

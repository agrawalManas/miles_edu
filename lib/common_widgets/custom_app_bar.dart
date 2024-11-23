import 'package:flutter/material.dart';
import 'package:miles_edu_assessment/constants/app_colors.dart';
import 'package:miles_edu_assessment/constants/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color? titleColor;
  final Widget? leading;
  final Color? backgroundColor;
  const CustomAppBar({
    required this.title,
    this.titleColor,
    this.leading,
    this.backgroundColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? AppColors.black,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: leading ??
            Icon(
              Icons.arrow_back_ios,
              color: AppColors.neutral01,
            ),
      ),
      title: Text(
        title,
        style: AppTextStyles.style16W400(
          color: AppColors.neutral01,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}

import 'package:flutter/material.dart';
import 'package:miles_edu_assessment/constants/app_assets.dart';
import 'package:miles_edu_assessment/constants/app_colors.dart';
import 'package:miles_edu_assessment/modules/dashboard/widgets/painters.dart';
import 'package:miles_edu_assessment/utils/image_loader.dart';

class CurvedBottomNavBar extends StatefulWidget {
  const CurvedBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CurvedBottomNavBar> createState() => _CurvedBottomNavBarState();
}

class _CurvedBottomNavBarState extends State<CurvedBottomNavBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 90,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(screenWidth, 90),
            painter: CurvedPainter(),
          ),

          // Custom positioned icons that follow the curve
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 90,
              child: CustomPaint(
                size: Size(screenWidth, 90),
                child: Stack(
                  children: [
                    _positionedIcon(
                      screenWidth * 0.2,
                      40,
                      0,
                      AppAssets.homeIcon,
                      'Home',
                    ),
                    _positionedIcon(
                      screenWidth * 0.4,
                      25,
                      1,
                      AppAssets.eventsIcon,
                      'Events',
                    ),
                    _positionedIcon(
                      screenWidth * 0.6,
                      25,
                      2,
                      AppAssets.popularIcon,
                      'Popular',
                    ),
                    _positionedIcon(
                      screenWidth * 0.8,
                      40,
                      3,
                      AppAssets.videoIcon,
                      'Videos',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _positionedIcon(
    double x,
    double y,
    int index,
    String icon,
    String label,
  ) {
    bool isSelected = _selectedIndex == index;
    return Positioned(
      left: x - 30, // Center the icon (30 = half of icon container width)
      top: y,
      child: InkWell(
        onTap: () => setState(() => _selectedIndex = index),
        child: SizedBox(
          width: 60,
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: isSelected
                  ? [
                      BoxShadow(
                        color: AppColors.secondary03.withAlpha(24),
                        blurRadius: 4.0,
                        spreadRadius: 4.0,
                        offset: const Offset(
                          3.0,
                          0.0,
                        ),
                      )
                    ]
                  : null,
            ),
            child: ImageLoader.assetSvg(
              icon,
              color: isSelected ? AppColors.secondary03 : AppColors.neutral02,
            ),
          ),
        ),
      ),
    );
  }
}

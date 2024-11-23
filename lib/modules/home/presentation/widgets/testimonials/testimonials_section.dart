import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_edu_assessment/constants/app_assets.dart';
import 'package:miles_edu_assessment/constants/app_colors.dart';
import 'package:miles_edu_assessment/constants/app_text_styles.dart';
import 'package:miles_edu_assessment/modules/home/models/testimonials_model.dart';
import 'package:miles_edu_assessment/modules/testimonials/presentation/testimonial_screen.dart';
import 'package:miles_edu_assessment/utils/image_loader.dart';

class TestimonialsSection extends StatelessWidget {
  final TestimonialsModel testimonialsModel;
  const TestimonialsSection({super.key, required this.testimonialsModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 108.h,
      child: ListView.separated(
        padding: EdgeInsets.zero,
        itemCount: testimonialsModel.data?.length ?? 0,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 60.w,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    if (!(testimonialsModel.data?[index].watched ?? false))
                      ImageLoader.asset(AppAssets.testimonialGradientCircle),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => TestimonialScreen(
                              params: TestimonialsScreenParams(
                                testimonial:
                                    testimonialsModel.data?[index] ?? Datum(),
                              ),
                            ),
                          ),
                        );
                      },
                      child: CircleAvatar(
                        radius: 24.r,
                        backgroundColor: AppColors.lightBg,
                        child: ImageLoader.cachedNetworkImage(
                          testimonialsModel.data?[index].imageUrl ?? '',
                          errorWidget: ImageLoader.asset(
                            AppAssets.placeholderTestimonials[index],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                4.verticalSpace,
                Text(
                  '${testimonialsModel.data?[index].firstName ?? '-'} ${testimonialsModel.data?[index].lastName ?? '-'}',
                  style: AppTextStyles.style10W400(
                    color: AppColors.neutral01,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return 12.horizontalSpace;
        },
      ),
    );
  }
}

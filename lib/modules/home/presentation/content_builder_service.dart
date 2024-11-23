import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_edu_assessment/constants/app_assets.dart';
import 'package:miles_edu_assessment/constants/app_colors.dart';
import 'package:miles_edu_assessment/constants/app_text_styles.dart';
import 'package:miles_edu_assessment/constants/enums.dart';
import 'package:miles_edu_assessment/modules/home/domain/models/home_screen_model.dart';
import 'package:miles_edu_assessment/utils/image_loader.dart';
import 'package:miles_edu_assessment/modules/youtube_video/presentation/youtube_video_screen.dart';

class ContentBuilderService {
  final HomeScreenContentsEnum contentsEnum;
  final Datum data;

  ContentBuilderService({
    required this.contentsEnum,
    required this.data,
    required homeScreenModel,
  });

  Widget buildWidget() {
    switch (contentsEnum) {
      case HomeScreenContentsEnum.banner:
        return Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.r),
                bottomRight: Radius.circular(10.r),
              ),
            ),
            child: ImageLoader.cachedNetworkImage(
              data.posts?.first.files?.first.imagePath ?? '',
              height: 308.h,
              width: double.infinity,
              errorWidget: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.r),
                  bottomRight: Radius.circular(10.r),
                ),
                child: ImageLoader.asset(
                  AppAssets.dreamBanner,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      case HomeScreenContentsEnum.reels:
        return SizedBox(
          height: 454.h,
          child: GridView.builder(
            itemCount: data.count,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.w,
              mainAxisSpacing: 14.h,
              childAspectRatio: 0.66,
            ),
            itemBuilder: (BuildContext context, int index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.r),
                    topLeft: Radius.circular(5.r),
                    bottomRight: Radius.circular(15.r),
                  ),
                ),
                child: ImageLoader.cachedNetworkImage(
                  data.posts?.first.files?.first.imagePath ?? '',
                  errorWidget: ImageLoader.asset(
                    AppAssets.placeholderReels[index],
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
          ),
        );
      case HomeScreenContentsEnum.cta:
        return ImageLoader.cachedNetworkImage(
          data.posts?.first.files?.first.imagePath ?? '',
          height: 183.h,
          width: double.infinity,
          errorWidget: ImageLoader.asset(
            AppAssets.placeholderCTA,
            height: 183.h,
            width: double.infinity,
          ),
        );
      case HomeScreenContentsEnum.events:
        return SizedBox(
          height: 183.h,
          child: ListView.separated(
            itemCount: data.posts?.length ?? 0,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.r),
                  ),
                ),
                child: ImageLoader.cachedNetworkImage(
                  data.posts?[index].files?.first.imagePath ?? '',
                  height: 183.h,
                  width: 280.w,
                  errorWidget: ImageLoader.asset(
                    AppAssets.eventBanner,
                    height: 183.h,
                    width: 200.w,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return 12.horizontalSpace;
            },
          ),
        );
      // return const SizedBox.shrink();
      case HomeScreenContentsEnum.inshorts:
        return ListView.separated(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: data.count ?? 0,
          separatorBuilder: (context, index) {
            return 16.verticalSpace;
          },
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.r),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.neutral04.withOpacity(0.9),
                    AppColors.secondary02.withOpacity(0.9),
                  ],
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => YoutubeVideoScreen(
                      params: YoutubeVideoScreenParams(
                        videoUrl:
                            data.posts?[index].files?.first.videoUrl ?? '',
                        title: data.posts?[index].title ?? '--',
                      ),
                    ),
                  ));
                },
                child: Column(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4.r),
                        ),
                      ),
                      child: ImageLoader.cachedNetworkImage(
                        data.posts?[index].files?.first.thumbnail ?? '',
                        height: 170.h,
                        width: double.infinity,
                        errorWidget: ImageLoader.asset(
                          AppAssets.placeholderYoutubeVideos[index],
                          height: 170.h,
                          width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    8.verticalSpace,
                    Row(
                      children: [
                        ImageLoader.assetSvg(
                          AppAssets.circularBorderedLogo,
                          height: 32.h,
                          width: 32.w,
                        ),
                        8.horizontalSpace,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data.posts?[index].title ?? '--',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyles.style12W400(
                                  color: AppColors.neutral01,
                                ),
                              ),
                              4.verticalSpace,
                              Text(
                                '${data.posts?[index].likes ?? 0} likes',
                                style: AppTextStyles.style12W400(
                                  color: AppColors.neutral02,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      case HomeScreenContentsEnum.masterclass:
        return CarouselSlider.builder(
          itemCount: data.count,
          itemBuilder: (context, index, realIndex) {
            return DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(2.r),
                ),
              ),
              child: ImageLoader.cachedNetworkImage(
                data.posts?[index].files?.first.imagePath ?? '',
                height: 360.h,
                errorWidget: ImageLoader.asset(
                  AppAssets.carousel1,
                  height: 360.h,
                  width: 248.w,
                  fit: BoxFit.fill,
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: 360.h,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 2,
            viewportFraction: 0.75,
          ),
        );
    }
  }
}

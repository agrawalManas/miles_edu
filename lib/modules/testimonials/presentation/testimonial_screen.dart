import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_edu_assessment/common_widgets/custom_button.dart';
import 'package:miles_edu_assessment/constants/app_assets.dart';
import 'package:miles_edu_assessment/constants/app_colors.dart';
import 'package:miles_edu_assessment/constants/app_text_styles.dart';
import 'package:miles_edu_assessment/modules/home/models/testimonials_model.dart';
import 'package:miles_edu_assessment/utils/image_loader.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TestimonialsScreenParams {
  final Datum testimonial;
  TestimonialsScreenParams({required this.testimonial});
}

class TestimonialScreen extends StatefulWidget {
  final TestimonialsScreenParams params;
  const TestimonialScreen({super.key, required this.params});

  @override
  State<TestimonialScreen> createState() => _TestimonialScreenState();
}

class _TestimonialScreenState extends State<TestimonialScreen> {
  late YoutubePlayerController _youtubePlayerController;
  final ValueNotifier<bool> _showFullDescription = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
              widget.params.testimonial.videoUrl ?? '') ??
          '',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        enableCaption: false,
        hideControls: true,
        disableDragSeek: true,
        loop: true,
        showLiveFullscreenButton: false,
      ),
    );
  }

  @override
  void dispose() {
    _youtubePlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: YoutubePlayer(
              actionsPadding: EdgeInsets.zero,
              controller: _youtubePlayerController,
              controlsTimeOut: const Duration(seconds: 0),
              progressIndicatorColor: AppColors.transparent,
              progressColors: ProgressBarColors(
                playedColor: AppColors.transparent,
                handleColor: AppColors.transparent,
              ),
              onReady: () {
                _youtubePlayerController.addListener(() {
                  _youtubePlayerController.fitHeight(
                    MediaQuery.of(context).size,
                  );
                  _youtubePlayerController.setSize(
                    MediaQuery.of(context).size,
                  );
                });
              },
            ),
          ),
          Positioned(
            top: 24.h,
            // left: 16.w,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: AppColors.neutral01,
              ),
            ),
          ),
          Positioned(
            left: 16.w,
            right: 16.w,
            bottom: 16.h,
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: ImageLoader.cachedNetworkImage(
                          widget.params.testimonial.imageUrl ?? '',
                          height: 32.h,
                          width: 32.w,
                          errorWidget: ImageLoader.asset(
                            AppAssets.testimonial1,
                          ),
                        ),
                      ),
                      12.horizontalSpace,
                      Text(
                        '${widget.params.testimonial.firstName ?? '-'} ${widget.params.testimonial.lastName ?? ''}',
                        style: AppTextStyles.style16W600(
                          color: AppColors.neutral01,
                        ),
                      ),
                    ],
                  ),
                  8.verticalSpace,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ValueListenableBuilder<bool>(
                            valueListenable: _showFullDescription,
                            builder: (context, value, child) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      if (value) {
                                        _showFullDescription.value = false;
                                      }
                                    },
                                    child: Text(
                                      '"${widget.params.testimonial.description}',
                                      style: AppTextStyles.style14W400(
                                        color: AppColors.neutral01,
                                      ),
                                      maxLines: value ? null : 3,
                                      overflow:
                                          value ? null : TextOverflow.ellipsis,
                                    ),
                                  ),
                                  8.verticalSpace,
                                  !value
                                      ? CustomButton(
                                          title: 'View More',
                                          onTap: () {
                                            _showFullDescription.value = true;
                                          },
                                        )
                                      : const SizedBox.shrink(),
                                ],
                              );
                            }),
                      ),
                      16.horizontalSpace,
                      Column(
                        children: [
                          ImageLoader.assetSvg(
                            AppAssets.favoriteIcon,
                            color:
                                (widget.params.testimonial.likedByMe ?? false)
                                    ? AppColors.semantic01
                                    : AppColors.neutral01,
                          ),
                          16.verticalSpace,
                          ImageLoader.assetSvg(AppAssets.shareIcon),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

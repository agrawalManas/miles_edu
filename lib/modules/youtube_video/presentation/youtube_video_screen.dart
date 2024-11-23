import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_edu_assessment/constants/app_colors.dart';
import 'package:miles_edu_assessment/constants/app_text_styles.dart';
import 'package:miles_edu_assessment/modules/dashboard/widgets/painters.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoScreenParams {
  final String videoUrl;
  final String title;
  YoutubeVideoScreenParams({required this.videoUrl, required this.title});
}

class YoutubeVideoScreen extends StatefulWidget {
  final YoutubeVideoScreenParams params;
  const YoutubeVideoScreen({required this.params, super.key});

  @override
  State<YoutubeVideoScreen> createState() => _YoutubeVideoScreenState();
}

class _YoutubeVideoScreenState extends State<YoutubeVideoScreen> {
  late YoutubePlayerController _youtubePlayerController;

  @override
  void initState() {
    super.initState();
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId:
          YoutubePlayer.convertUrlToId(widget.params.videoUrl) ?? '',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
      ),
    );
  }

  @override
  void dispose() {
    _youtubePlayerController.dispose();
    // To turn off landscape mode
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );
    super.dispose();
  }

  void _onPlayerStateChange() {
    if (_youtubePlayerController.value.isFullScreen) {
      _isVideoFullScreen.value = true;
    }
  }

  final ValueNotifier<bool> _isVideoFullScreen = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: _isVideoFullScreen,
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: AppColors.black,
          body: SafeArea(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppColors.black,
                    AppColors.background,
                    AppColors.secondary01,
                  ],
                ),
              ),
              child: CustomPaint(
                painter: GridPainter(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (!value) ...[
                      Padding(
                        padding: EdgeInsets.only(left: 8.w, right: 8.w),
                        child: Row(
                          children: [
                            IconButton(
                              splashRadius: 1,
                              splashColor: AppColors.transparent,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: AppColors.neutral01,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                widget.params.title,
                                style: AppTextStyles.style16W400(
                                  color: AppColors.neutral01,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      100.verticalSpace,
                    ],
                    SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.neutral01,
                            width: 4.w,
                          ),
                        ),
                        child: YoutubePlayer(
                          controller: _youtubePlayerController,
                          progressIndicatorColor: AppColors.secondary03,
                          progressColors: ProgressBarColors(
                            playedColor: AppColors.secondary03,
                            handleColor: AppColors.neutral01,
                            bufferedColor:
                                AppColors.secondary03.withOpacity(0.2),
                          ),
                          onReady: () {
                            _youtubePlayerController
                                .addListener(_onPlayerStateChange);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

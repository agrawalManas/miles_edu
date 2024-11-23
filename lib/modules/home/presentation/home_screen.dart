import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_edu_assessment/common_widgets/custom_app_bar_with_image.dart';
import 'package:miles_edu_assessment/constants/home_screen_response.dart';
import 'package:miles_edu_assessment/modules/dashboard/widgets/painters.dart';
import 'package:miles_edu_assessment/modules/home/models/home_screen_model.dart';
import 'package:miles_edu_assessment/modules/home/presentation/content_position.dart';
import 'package:miles_edu_assessment/constants/app_colors.dart';
import 'package:miles_edu_assessment/constants/testimonial_response.dart';
import 'package:miles_edu_assessment/modules/home/models/testimonials_model.dart';
import 'package:miles_edu_assessment/modules/home/presentation/widgets/footer_section.dart';
import 'package:miles_edu_assessment/modules/home/presentation/widgets/header_section.dart';
import 'package:miles_edu_assessment/modules/home/presentation/widgets/testimonials/testimonials_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TestimonialsModel _testimonialsModel;
  late HomeScreenModel _homeScreenModel;

  final ValueNotifier<bool> _isLoading = ValueNotifier<bool>(false);
  @override
  void initState() {
    super.initState();
    _testimonialsModel = TestimonialsModel.fromJson(testimonialResponse);
    _homeScreenModel = HomeScreenModel.fromJson(homeScreenResponse);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: AppColors.black,
      appBar: CustomAppBarWithImage(onTap: () {}),
      body: DecoratedBox(
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
          size: const Size(double.infinity, double.infinity),
          painter: GridPainter(),
          child: RefreshIndicator(
            backgroundColor: AppColors.neutral04,
            onRefresh: () async {
              _isLoading.value = true;
              Future.delayed(
                const Duration(milliseconds: 400),
                () {
                  _isLoading.value = false;
                },
              );
            },
            child: ValueListenableBuilder(
              valueListenable: _isLoading,
              builder: (context, value, child) {
                return value
                    ? Center(
                        child: CircularProgressIndicator(
                          color: AppColors.secondary03,
                        ),
                      )
                    : ScrollConfiguration(
                        behavior: const ScrollBehavior().copyWith(
                          overscroll: false,
                        ),
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                16.verticalSpace,
                                //---------HEADER--------
                                const HeaderSection(),
                                16.verticalSpace,

                                //----------STORIES----------
                                TestimonialsSection(
                                  testimonialsModel: _testimonialsModel,
                                ),

                                //-----------MAIN-CONTENT---------
                                ContentPosition(
                                  homeScreenModel: _homeScreenModel.data ?? [],
                                ),
                                24.verticalSpace,

                                //-----------FOOTER-------------
                                const Align(
                                  alignment: Alignment.center,
                                  child: FooterSection(),
                                ),
                                96.verticalSpace,
                              ],
                            ),
                          ),
                        ),
                      );
              },
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_edu_assessment/modules/dashboard/presentation/dashboard_screen.dart';
import 'package:miles_edu_assessment/utils/app_screen_util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // To turn off landscape mode
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      builder: (context, child) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return OrientationBuilder(
              builder: (context, orientation) {
                AppScreenUtil().init(constraints, orientation);
                return const MaterialApp(
                  title: 'Flutter Demo',
                  debugShowCheckedModeBanner: false,
                  home: DashboardScreen(),
                );
              },
            );
          },
        );
      },
    );
  }
}

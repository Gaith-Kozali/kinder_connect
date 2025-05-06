import 'package:flutter/material.dart';
import 'package:kinder_connect/Cores/app_router.dart';
import 'package:kinder_connect/Cores/screen_utils.dart';
import 'package:kinder_connect/Features/authentication_feature/Presentation/Screens/get_started_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kinder_connect/Features/authentication_feature/Presentation/Screens/login_screen.dart';
import 'package:kinder_connect/Features/authentication_feature/Presentation/Screens/register_screen.dart';
import 'package:kinder_connect/Features/authentication_feature/Presentation/Screens/verification_screen.dart';
import 'package:kinder_connect/Features/authentication_feature/presentation/screens/forgot_password_screen.dart';
import 'package:kinder_connect/Features/home_feature/presentation/screens/card_screen.dart';
import 'package:kinder_connect/Features/home_feature/presentation/screens/home_screen.dart';
import 'package:kinder_connect/Features/home_feature/presentation/screens/learning_map_screen.dart';
import 'package:kinder_connect/Features/home_feature/presentation/screens/model_screen.dart';
import 'package:kinder_connect/Features/home_feature/presentation/screens/question_screen.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: figmaDesignSize,
      minTextAdapt: true,
      builder: (_, child) {
        return MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: TextScaler.linear(textScaleFactor(context))),
          child: MaterialApp.router(
            theme: ThemeData(textTheme: TextTheme()),
            routerConfig: router,
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kinder_connect/Cores/app_colors.dart';
import 'package:kinder_connect/Cores/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Widgets/primary_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 40.h,
            horizontal: 10.w,
          ).copyWith(top: 80.h),
          child: Column(
            children: [
              Text.rich(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                TextSpan(
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
                  children: [
                    TextSpan(
                      text: 'LEARNING ',
                      style: TextStyle(color: Color(0xFFFDE184)),
                    ),
                    TextSpan(
                      text: 'IS AN ADVENTURE!',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Spacer(flex: 3),
              Image.asset(
                AppImages.startedImage,
                width: 400.w,
                height: 430.h,
                fit: BoxFit.cover,
              ),
              Spacer(),
              PrimaryButton(text: "Get Start", func: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

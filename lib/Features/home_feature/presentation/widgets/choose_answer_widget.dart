import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kinder_connect/Cores/app_images.dart';

import '../../../../Cores/app_colors.dart';

class ChooseAnswerWidget extends StatelessWidget {
  const ChooseAnswerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 10.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30).r,
      ),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 30.h,
          crossAxisSpacing: 20.w,
        ),
        itemBuilder:
            (context, index) => InkWell(
              child: Container(
                padding: EdgeInsets.all(5).r,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: AppColors.random4Colors[index % 4],
                  ),
                  borderRadius: BorderRadius.circular(25).r,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      AppImages.examCardImg,
                      fit: BoxFit.cover,
                      width: 120.r,
                      height: 120.r,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: Text(
                        'Cat',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {},
            ),
        itemCount: 4,
      ),
    );
  }
}

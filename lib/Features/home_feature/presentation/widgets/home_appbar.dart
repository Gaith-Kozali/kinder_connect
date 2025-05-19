import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../Cores/app_colors.dart';
import '../../../../Cores/app_images.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key, this.withPop = false, this.title});
  final bool withPop;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        color: AppColors.backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                if (withPop) {
                  context.pop();
                }
              },
              child: Container(
                padding: EdgeInsets.all(8).r,
                decoration: ShapeDecoration(
                  color: Colors.white.withAlpha(25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Image.asset(
                  withPop ? AppImages.backArrowIcon : AppImages.settingsIcon,
                  height: 35.r,
                  width: 35.r,
                  fit: BoxFit.cover,
                  color: Colors.white,
                ),
              ),
            ),
            if (title != null)
              Text(
                title!,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: AppColors.primaryColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                ),
              ),
            if (!withPop)
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(8).r,
                  decoration: ShapeDecoration(
                    color: Colors.white.withAlpha(25),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Image.asset(
                    AppImages.magicStickIcon,
                    height: 35.r,
                    width: 35.r,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

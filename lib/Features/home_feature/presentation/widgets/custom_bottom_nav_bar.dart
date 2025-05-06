import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kinder_connect/Cores/app_colors.dart';
import 'package:kinder_connect/Cores/app_images.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 15.w,
      ).copyWith(top: 6.h),
      decoration: BoxDecoration(
        color: AppColors.lightYellow,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30).r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildIconButton(AppImages.homeIcon),
          _buildIconButton(AppImages.microphoneIcon),
          _buildIconButton(AppImages.paperIcon),
          _buildIconButton(AppImages.chatIcon),
        ],
      ),
    );
  }

  Widget _buildIconButton(String assetPath) {
    return InkWell(
      child: CircleAvatar(
        radius: 32.r,
        backgroundColor: AppColors.backgroundColor,
        child: Image.asset(assetPath, fit: BoxFit.fill),
      ),
      onTap: () {},
    );
  }
}

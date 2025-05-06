import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Cores/app_colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 64.r,
        height: 64.r,
        decoration: ShapeDecoration(
          color: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15).r,
          ),
        ),
        child: Icon(
          Icons.arrow_forward,
          color: AppColors.backgroundColor,
          size: 30.r,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Cores/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.text, required this.func});
  final String text;
  final VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(40).r,
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 2,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 34,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

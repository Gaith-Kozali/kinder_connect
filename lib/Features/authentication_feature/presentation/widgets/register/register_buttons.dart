import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Cores/app_colors.dart';

class RegisterButtons extends StatelessWidget {
  const RegisterButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h, bottom: 5.h),
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: WidgetStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(vertical: 15.h, horizontal: 32.w),
                  ),
                  minimumSize: const WidgetStatePropertyAll<Size>(Size.zero),
                  shape: WidgetStatePropertyAll<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30).r,
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            TextButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 20.w),
      ],
    );
  }
}

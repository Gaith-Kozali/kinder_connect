import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinder_connect/Cores/app_images.dart';
import '../../../../Cores/app_colors.dart';
import '../../../../Cores/screen_utils.dart';
import '../Widgets/primary_button.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          child: SizedBox(
            height: getScreenHeight(context, withSafeArea: false),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ).copyWith(top: 60.h, bottom: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    AppImages.forgotPasswordImg,
                    width: 350.w,
                    height: 350.h,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.h),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Forgot\nPassword?',
                        maxLines: 2,
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Don’t worry ! It happens. Please enter the phone number we will send the OTP in this phone number.',
                    style: GoogleFonts.outfit(
                      color: const Color(0xFF5B5858),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 25.h),
                  Container(
                    width: 320.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50).r,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10.h,
                          horizontal: 22.w,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Enter the phone Number',
                        hintStyle: GoogleFonts.outfit(
                          color: const Color(0xFF7E7C7C),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50).r,
                          borderSide: BorderSide(
                            width: 1,
                            color: const Color(0xFFD9D9D9),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 51),
                  PrimaryButton(text: "Continue", func: () {}),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinder_connect/Cores/app_colors.dart';
import 'package:kinder_connect/Cores/app_images.dart';
import 'package:kinder_connect/Cores/screen_utils.dart';
import 'package:pinput/pinput.dart';
import '../Widgets/primary_button.dart';

class VerificationScreen extends StatelessWidget {
  VerificationScreen({super.key});
  final pinTheme = PinTheme(
    height: 58.r,
    width: 58.r,
    textStyle: GoogleFonts.outfit(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10).r,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          child: SizedBox(
            height: getScreenHeight(context, withSafeArea: false),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              child: Column(
                children: [
                  Image.asset(
                    AppImages.verificationImage,
                    width: 400.r,
                    height: 400.r,
                    fit: BoxFit.cover,
                  ),
                  Spacer(),
                  Text(
                    'OTP VERIFICATION',
                    style: GoogleFonts.outfit(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 13.h, bottom: 40.h),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Enter the OTP sent to',
                            style: GoogleFonts.outfit(
                              color: const Color(0xFFFFD176),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: ' - +91-8976500001',
                            style: GoogleFonts.outfit(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinput(
                    defaultPinTheme: pinTheme,
                    separatorBuilder: (_) => SizedBox(width: 15.w),
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                  ),
                  Spacer(),
                  Text(
                    '00:120 Sec',
                    style: GoogleFonts.outfit(
                      color: const Color(0xFFDBD8D8),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t receive code ? ',
                        style: GoogleFonts.outfit(
                          color: const Color(0xFFFFD176),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Re-send',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(flex: 2),
                  PrimaryButton(text: "Submit", func: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

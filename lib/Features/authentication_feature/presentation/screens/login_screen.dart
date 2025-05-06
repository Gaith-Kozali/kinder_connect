import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kinder_connect/Features/authentication_feature/Presentation/Widgets/login/login_form_fields.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../Cores/app_colors.dart';
import '../../../../Cores/app_images.dart';
import '../../../../Cores/screen_utils.dart';
import '../Widgets/login/login_button.dart';
import '../Widgets/sentence_with_divider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                horizontal: 10.w,
              ).copyWith(top: 60.h, bottom: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      padding: WidgetStatePropertyAll<EdgeInsets>(
                        EdgeInsets.symmetric(vertical: 15.h, horizontal: 60.w),
                      ),
                      minimumSize: const WidgetStatePropertyAll<Size>(
                        Size.zero,
                      ),
                      shape: WidgetStatePropertyAll<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30).r,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    label: Text(
                      'Login with Google',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    icon: Image.asset(
                      "assets/icons/googleIcon.png",
                      height: 20.r,
                      width: 20.r,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SentenceWithDivider(sentence: 'Or login with Email'),
                  SizedBox(height: 10.h),
                  LoginFormFields(),
                  Column(
                    children: [
                      Text(
                        'Don’t have an account?',
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign up',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          AppImages.loginImage,
                          height: 175.r,
                          width: 175.r,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 20.w),
                        child: LoginButton(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

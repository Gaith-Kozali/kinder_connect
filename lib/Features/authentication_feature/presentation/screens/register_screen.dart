import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kinder_connect/Cores/app_colors.dart';
import 'package:kinder_connect/Cores/app_images.dart';
import 'package:kinder_connect/Cores/screen_utils.dart';
import 'package:kinder_connect/Features/authentication_feature/Presentation/Widgets/register/register_buttons.dart';
import 'package:kinder_connect/Features/authentication_feature/Presentation/Widgets/register/register_form_fields.dart';
import '../Widgets/sentence_with_divider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                      'Sign up with Google',
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
                  SentenceWithDivider(sentence: 'Or continue with Email'),
                  RegisterFormFields(),
                  SizedBox(height: 10.h),
                  CheckboxListTile(
                    value: false,
                    controlAffinity: ListTileControlAffinity.leading,
                    checkColor: AppColors.primaryColor,
                    fillColor: WidgetStatePropertyAll(Colors.white),
                    side: const BorderSide(color: AppColors.primaryColor),
                    onChanged: (value) {},
                    title: Text(
                      'I agree with the Terms of Service and Privacy policy',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  RegisterButtons(),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      AppImages.registerImage,
                      height: 175.r,
                      width: 175.r,
                      fit: BoxFit.cover,
                    ),
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinder_connect/Features/authentication_feature/Presentation/Widgets/primary_button.dart';
import 'package:kinder_connect/Features/home_feature/presentation/widgets/choose_answer_widget.dart';
import 'package:kinder_connect/Features/home_feature/presentation/widgets/home_appbar.dart';
import '../../../../Cores/app_colors.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});
  static const routeName = "QuestionScreen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
          child: Column(
            children: [
              HomeAppbar(withPop: true, title: "Question"),
              SizedBox(height: 30.h),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12).r,
                ),
                child: Text(
                  'What\'s in the picture Cat ?',
                  style: GoogleFonts.inter(
                    color: AppColors.primaryColor,
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h, bottom: 50.h),
                child: ChooseAnswerWidget(),
              ),
              PrimaryButton(text: "Ok", func: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

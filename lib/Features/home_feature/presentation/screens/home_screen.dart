import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinder_connect/Cores/app_colors.dart';
import 'package:kinder_connect/Cores/app_images.dart';
import 'package:kinder_connect/Cores/screen_utils.dart';
import 'package:kinder_connect/Features/home_feature/presentation/screens/question_screen.dart';
import 'package:kinder_connect/Features/home_feature/presentation/widgets/HorizontalHomeCard.dart';
import 'package:kinder_connect/Features/home_feature/presentation/widgets/custom_bottom_nav_bar.dart';
import 'package:kinder_connect/Features/home_feature/presentation/widgets/home_appbar.dart';

import '../widgets/home_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = "HomeScreen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        bottomNavigationBar: CustomBottomNavBar(),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
          child: SizedBox(
            height: (getScreenHeight(context, withSafeArea: false) - 100.h),
            child: Column(
              children: [
                HomeAppbar(),
                HorizontalHomeCard(),
                SizedBox(height: 20.h),
                Expanded(
                  child: GridView(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.w,
                      mainAxisSpacing: 40.h,
                    ),
                    children: [
                      HomeCard(
                        name: "Game",
                        imagePath: AppImages.gameCardImg,
                        colors: AppColors.redList,
                        func: () {},
                      ),
                      HomeCard(
                        name: "Grades",
                        imagePath: AppImages.gradesCardImg,
                        colors: AppColors.yellowList,
                        func: () {},
                      ),
                      HomeCard(
                        name: "Video",
                        imagePath: AppImages.videoCardImg,
                        colors: AppColors.blueList,
                        func: () {},
                      ),
                      HomeCard(
                        name: "Exam",
                        imagePath: AppImages.examCardImg,
                        colors: AppColors.purpleList,
                        func: () {
                          GoRouter.of(
                            context,
                          ).pushNamed(QuestionScreen.routeName);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

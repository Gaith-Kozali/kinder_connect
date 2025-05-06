import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinder_connect/Cores/app_images.dart';
import 'package:kinder_connect/Cores/screen_utils.dart';
import 'package:kinder_connect/Features/home_feature/domain/entities/super_class.dart';
import 'package:kinder_connect/Features/home_feature/presentation/screens/model_screen.dart';
import 'package:kinder_connect/Features/home_feature/presentation/widgets/home_appbar.dart';
import '../../../../Cores/app_colors.dart';

class LearningMapScreen extends StatelessWidget {
  const LearningMapScreen({super.key, required this.superClass});
  static const routeName = "LearningMapScreen";
  final SuperClass superClass;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
          child: Column(
            children: [
              HomeAppbar(),
              Text(
                superClass.name,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: AppColors.lightYellow,
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(),
              Stack(
                children: [
                  Image.asset(
                    AppImages.mapImg,
                    height:
                        getScreenHeight(context, withSafeArea: false) * 0.52,
                    width: getScreenWidth(context),
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 60.h,
                    left: 50.w,
                    child: InkWell(
                      child: Image.asset(
                        AppImages.exampleImg,
                        width: 110.r,
                        height: 110.r,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {
                        context.pushNamed(
                          ModelScreen.routeName,
                          extra: superClass,
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: 60.h,
                    right: 40.w,
                    child: InkWell(
                      child: Image.asset(
                        AppImages.boardImg,
                        width: 130.r,
                        height: 130.r,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {},
                    ),
                  ),
                  Positioned(
                    bottom: 50.h,
                    left: 70.w,
                    child: InkWell(
                      child: Image.asset(
                        AppImages.gameCardImg,
                        width: 130.r,
                        height: 130.r,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {},
                    ),
                  ),
                  Positioned(
                    bottom: 75.h,
                    right: 20.w,
                    child: InkWell(
                      child: Image.asset(
                        AppImages.examCardImg,
                        width: 110.r,
                        height: 110.r,
                        fit: BoxFit.cover,
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}

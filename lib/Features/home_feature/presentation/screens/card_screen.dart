import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinder_connect/Cores/app_colors.dart';
import 'package:kinder_connect/Features/home_feature/domain/entities/animal.dart';
import 'package:kinder_connect/Features/home_feature/domain/entities/letter.dart';
import 'package:kinder_connect/Features/home_feature/domain/entities/number.dart';
import 'package:kinder_connect/Features/home_feature/domain/entities/super_class.dart';
import 'package:kinder_connect/Features/home_feature/presentation/screens/learning_map_screen.dart';
import 'package:kinder_connect/Features/home_feature/presentation/screens/model_screen.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key, required this.superClasses});
  static const routeName = "CardScreen";
  final List<SuperClass> superClasses;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: ListView.separated(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 25.h,
          ).copyWith(top: 50.h),
          itemBuilder:
              (context, index) => InkWell(
                onTap: () {
                  if ((superClasses[0] is Letter) ||
                      (superClasses[0] is Number)) {
                    context.pushNamed(
                      LearningMapScreen.routeName,
                      extra: superClasses[index],
                    );
                  } else {
                    context.pushNamed(
                      ModelScreen.routeName,
                      extra: superClasses[index],
                    );
                  }
                },
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    ClipPath(
                      clipper: BackgroundClipper(),
                      child: Container(
                        width: 400.w,
                        height: 150.h,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20.w,
                      width: 250.w,
                      child: Text(
                        superClasses[index].name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Positioned(
                      top: -30.h,
                      right: 10.w,
                      child: Image.asset(
                        superClasses[index].image2Path,
                        width: 150.w,
                        height: 150.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
          separatorBuilder: (context, _) => SizedBox(height: 30.h),
          itemCount: superClasses.length,
        ),
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundnessFactor = 50.0;

    var path = Path();

    path.moveTo(0, roundnessFactor);
    path.lineTo(0, size.height - roundnessFactor);
    path.quadraticBezierTo(0, size.height, roundnessFactor, size.height);
    path.lineTo(size.width - roundnessFactor, size.height);
    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width,
      size.height - roundnessFactor,
    );
    path.lineTo(size.width, size.height * 0.33 + roundnessFactor * 0.5);
    path.quadraticBezierTo(
      size.width,
      size.height * 0.33,
      size.width - roundnessFactor,
      size.height * 0.33 - roundnessFactor * 0.5,
    );
    path.lineTo(roundnessFactor, 0);
    path.quadraticBezierTo(0, 0, 0, roundnessFactor);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

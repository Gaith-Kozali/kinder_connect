import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kinder_connect/Cores/app_images.dart';

class HomeCard extends StatelessWidget {
  HomeCard({
    super.key,
    required this.name,
    required this.colors,
    required this.imagePath,
    required this.func,
  });
  final String name;
  final String imagePath;
  final List<Color> colors;
  final VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Container(
        height: 150.r,
        width: 150.r,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: colors),
          borderRadius: BorderRadius.circular(25).r,
        ),
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: SvgPicture.asset(
                AppImages.cardVectorImg,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: -30.h,
              child: Image.asset(
                imagePath,
                height: 160.r,
                width: 160.r,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 20.h,
              child: Text(
                name,
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 2.w,
                  shadows: [
                    Shadow(
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      color: Color(0xFF000000).withAlpha(64),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}

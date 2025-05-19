import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinder_connect/Cores/data_base.dart';
import 'package:kinder_connect/Features/home_feature/presentation/screens/card_screen.dart';
import '../../../../Cores/app_colors.dart';
import '../../../../Cores/app_images.dart';

class HorizontalHomeCard extends StatefulWidget {
  const HorizontalHomeCard({super.key});

  @override
  State<HorizontalHomeCard> createState() => _HorizontalHomeCardState();
}

class _HorizontalHomeCardState extends State<HorizontalHomeCard> {
  Widget _singleCard(String cardName, String imagePath, VoidCallback func) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: InkWell(
        onTap: func,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Container(
              height: 190.h,
              padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0, 1),
                  end: Alignment(1, 0),
                  colors: [const Color(0xFFDE8BFF), const Color(0xFFD66EFF)],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20).r,
                ),
              ),
            ),
            Positioned(
              left: 10.w,
              child: Text(
                cardName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.w,
                ),
              ),
            ),
            Positioned(
              right: -30.w,
              top: -20.h,
              child: Image.asset(
                AppImages.lettersCardImg,
                width: 220.r,
                height: 220.r,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 8.w,
              bottom: 10.h,
              child: SvgPicture.asset(
                AppImages.robotImg,
                width: 50.r,
                height: 50.r,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 60.w,
              bottom: 30.h,
              child: SvgPicture.asset(
                AppImages.earthImg,
                width: 30.r,
                height: 30.r,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Map<String, dynamic>> sections = [
    {"name": "letters", "imagePath": "letters", "extra": letters},
    {"name": "numbers", "imagePath": "letters", "extra": numbers},
    {"name": "animals", "imagePath": "letters", "extra": animals},
  ];

  int currentPage = 0;

  bool isCurrentPage(int index) => currentPage == index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200.h,
          child: PageView.builder(
            controller: PageController(viewportFraction: 0.9),
            padEnds: false,
            itemCount: sections.length,
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
            itemBuilder:
                (context, index) => _singleCard(
                  sections[index]["name"],
                  sections[index]["imagePath"],
                  () => context.pushNamed(
                    CardScreen.routeName,
                    extra: sections[index]["extra"],
                  ),
                ),
          ),
        ),
        SizedBox(height: 20.h),
        SizedBox(
          height: 20.r,
          child: ListView.separated(
            itemCount: sections.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder:
                (context, index) => Center(
                  child: Container(
                    height: isCurrentPage(index) ? 18.r : 15.r,
                    width: isCurrentPage(index) ? 18.r : 15.r,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18).r,
                      color:
                          isCurrentPage(index)
                              ? AppColors.primaryColor
                              : AppColors.formFieldBackground,
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(width: 15.w),
          ),
        ),
      ],
    );
  }
}

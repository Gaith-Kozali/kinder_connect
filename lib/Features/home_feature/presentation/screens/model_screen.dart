import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kinder_connect/Features/home_feature/domain/entities/animal.dart';
import 'package:kinder_connect/Features/home_feature/domain/entities/letter.dart';
import 'package:kinder_connect/Features/home_feature/domain/entities/number.dart';
import 'package:kinder_connect/Features/home_feature/domain/entities/super_class.dart';
import 'package:kinder_connect/Features/home_feature/presentation/widgets/home_appbar.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import '../../../../Cores/app_colors.dart';
import '../widgets/custom_bottom_nav_bar.dart';

class ModelScreen extends StatelessWidget {
  const ModelScreen({super.key, required this.superClass});
  static const routeName = "ModelScreen";
  final SuperClass superClass;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        bottomNavigationBar: CustomBottomNavBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
          child: Column(
            children: [
              HomeAppbar(),
              Text(
                superClass.name,
                style: TextStyle(
                  color: AppColors.lightYellow,
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 60.h),
              SizedBox(
                height: 450.h,
                child: ModelViewer(
                  backgroundColor: Colors.transparent,
                  src: superClass.modelPath,
                  ar: true,
                  autoPlay: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

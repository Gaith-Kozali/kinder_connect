import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SentenceWithDivider extends StatelessWidget {
  const SentenceWithDivider({super.key, required this.sentence});
  final String sentence;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: SizedBox(
        width: 355.w,
        child: Row(
          children: [
            Expanded(child: Divider(color: Colors.white)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 11.w),
              child: Text(
                sentence,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Expanded(child: Divider(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

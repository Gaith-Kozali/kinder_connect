import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinder_connect/Cores/app_colors.dart';
import 'package:kinder_connect/Cores/app_images.dart';
import 'package:screenshot/screenshot.dart';

class BoardScreen extends StatefulWidget {
  const BoardScreen({super.key, this.letter, this.number});
  final String? letter;
  final String? number;
  static const routeName = "BoardScreen";

  @override
  State<StatefulWidget> createState() => _DrawingBoardState();
}

class _DrawingBoardState extends State<BoardScreen> {
  Color selectedColor = Colors.black;
  double strokeWidth = 20;
  List<DrawingPoint?> drawingPoints = [];
  List<Color> colors = [
    Colors.pink,
    Colors.red,
    Colors.black,
    Colors.yellow,
    Colors.amberAccent,
    Colors.purple,
    Colors.green,
  ];

  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              children: [
                Card(
                  margin: EdgeInsets.all(0).copyWith(bottom: 5.h),
                  elevation: 2,
                  shape: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20).r,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.lightYellow,
                      borderRadius: BorderRadius.vertical(
                        bottom: const Radius.circular(20).r,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10.h,
                      horizontal: 10.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () => setState(() => drawingPoints = []),
                          icon: Image.asset(
                            AppImages.cleanIcon,
                            width: 24.r,
                            height: 24.r,
                            color: AppColors.secondaryColor,
                          ),
                          label: Text(
                            "Clear Board",
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Image.asset(
                            AppImages.doneIcon,
                            width: 24.r,
                            height: 24.r,
                          ),
                          label: Text(
                            "Done",
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onPanStart: (details) {
                      setState(() {
                        drawingPoints.add(
                          DrawingPoint(
                            details.localPosition,
                            Paint()
                              ..color = selectedColor
                              ..isAntiAlias = true
                              ..strokeWidth = strokeWidth
                              ..strokeCap = StrokeCap.round,
                          ),
                        );
                      });
                    },
                    onPanUpdate: (details) {
                      setState(() {
                        drawingPoints.add(
                          DrawingPoint(
                            details.localPosition,
                            Paint()
                              ..color = selectedColor
                              ..isAntiAlias = true
                              ..strokeWidth = strokeWidth
                              ..strokeCap = StrokeCap.round,
                          ),
                        );
                      });
                    },
                    onPanEnd: (details) {
                      setState(() {
                        drawingPoints.add(null);
                      });
                    },
                    child: Screenshot(
                      controller: screenshotController,
                      child: CustomPaint(
                        foregroundPainter: _DrawingPainter(drawingPoints),
                        child: Container(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.all(10).r,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                colors.length,
                (index) => _buildColorChose(colors[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildColorChose(Color color) {
    bool isSelected = selectedColor == color;
    return GestureDetector(
      onTap: () => setState(() => selectedColor = color),
      child: Container(
        height: isSelected ? 47.r : 40.r,
        width: isSelected ? 47.r : 40.r,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border:
              isSelected ? Border.all(color: Colors.white, width: 3.w) : null,
        ),
      ),
    );
  }
}

class _DrawingPainter extends CustomPainter {
  List<DrawingPoint?> drawingPoints;

  _DrawingPainter(this.drawingPoints);

  List<Offset> offsetsList = [];

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < drawingPoints.length - 1; i++) {
      if (drawingPoints[i] != null && drawingPoints[i + 1] != null) {
        canvas.drawLine(
          drawingPoints[i]!.offset,
          drawingPoints[i + 1]!.offset,
          drawingPoints[i]!.paint,
        );
      } else if (drawingPoints[i] != null && drawingPoints[i + 1] == null) {
        offsetsList.clear();
        offsetsList.add(drawingPoints[i]!.offset);

        canvas.drawPoints(
          PointMode.points,
          offsetsList,
          drawingPoints[i]!.paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class DrawingPoint {
  Offset offset;
  Paint paint;

  DrawingPoint(this.offset, this.paint);
}

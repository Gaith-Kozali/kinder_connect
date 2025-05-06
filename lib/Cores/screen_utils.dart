import 'dart:math';
import 'package:flutter/material.dart';

Size figmaDesignSize = Size(428, 845);
double getScreenWidth(BuildContext context) => MediaQuery.sizeOf(context).width;

double getScreenHeight(BuildContext context, {bool withSafeArea = true}) =>
    withSafeArea
        ? MediaQuery.sizeOf(context).height
        : (MediaQuery.sizeOf(context).height -
            MediaQuery.paddingOf(context).vertical);

Orientation getScreenOrientation(BuildContext context) =>
    MediaQuery.orientationOf(context);

double textScaleFactor(BuildContext context, {double maxTextScaleFactor = 2}) {
  final width = getScreenWidth(context);
  double val = (width / figmaDesignSize.width);
  return min(val, maxTextScaleFactor);
}

extension ScreenSizeExtension on num {
  double dynamicWidth(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return (this * screenWidth) / figmaDesignSize.width;
  }

  double dynamicHeight(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return (this * screenHeight) / figmaDesignSize.height;
  }
}

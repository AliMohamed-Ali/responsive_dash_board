import 'package:flutter/material.dart';

double getResponsiveFontSize(double fontsize, BuildContext context) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontsize * scaleFactor;
  double lowerLimit = fontsize * 0.8;
  double upperLimit = fontsize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}

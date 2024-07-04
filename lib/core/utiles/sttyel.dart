import 'package:flutter/material.dart';
import 'package:pett_peaces/core/utiles/sizeconfig.dart';

abstract class AppStyles {
  static TextStyle styleRegular24(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      color: const Color(0xFF8A8A8A),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium12(context) {
    return TextStyle(
      color: const Color(0xFF8A8A8A),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium10(context) {
    return TextStyle(
      color: const Color(0xFFB5B5B5),
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium18(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle stylesemi20(context) {
    return TextStyle(
      color: Color.fromARGB(255, 253, 253, 253),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle stylesmedium32(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: const Color(0xFF8A8A8A),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: const Color(0xFF8A8A8A),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}

import 'package:flutter/material.dart';

class ScreenTypeHelper {
  static const double mobileWidth = 900;

  static double menuHeight({
    required BuildContext context,
  }) {
    if (MediaQuery.of(context).size.width <= mobileWidth) {
      return 300;
    }
    return 214;
  }

  static bool isMobile({
    required BuildContext context,
  }) {
    return MediaQuery.of(context).size.width <= mobileWidth;
  }

  static double cardResumeComponentWidth({
    required BuildContext context,
  }) {
    if (MediaQuery.of(context).size.width <= mobileWidth) {
      return 350;
    }
    return 400;
  }

  static double trejtoriaAlturaComponent({
    required BuildContext context,
  }) {
    if (MediaQuery.of(context).size.width <= mobileWidth) {
      return 600;
    }
    return 690;
  }
}

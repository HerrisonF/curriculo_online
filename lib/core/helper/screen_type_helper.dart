import 'package:flutter/material.dart';

class ScreenTypeHelper {
  static const double mobileWidth = 900;

  static double menuHeight({
    required BuildContext context,
  }) {
    if (MediaQuery.of(context).size.width <= mobileWidth) {
      return 290;
    }
    return 100;
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
      return 630;
    }
    return 690;
  }
}

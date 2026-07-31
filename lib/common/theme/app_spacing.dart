import 'package:flutter/material.dart';

class AppSpacing {
  AppSpacing._();

  static const double xs = 4.0;
  static const double s = 8.0;
  static const double m = 16.0;
  static const double l = 24.0;
  static const double xl = 32.0;
  static const double xxl = 48.0;

  // EdgeInsets helpers
  static const EdgeInsets edgeInsetsAllS = EdgeInsets.all(s);
  static const EdgeInsets edgeInsetsAllM = EdgeInsets.all(m);
  static const EdgeInsets edgeInsetsAllL = EdgeInsets.all(l);

  static const EdgeInsets edgeInsetsHorizontalM = EdgeInsets.symmetric(horizontal: m);
  static const EdgeInsets edgeInsetsVerticalM = EdgeInsets.symmetric(vertical: m);
}

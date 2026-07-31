import 'package:flutter/material.dart';

class AppRadius {
  AppRadius._();

  static const double s = 4.0;
  static const double m = 8.0;
  static const double l = 12.0;
  static const double xl = 20.0;
  static const double circular = 100.0;

  static const BorderRadius radiusS = BorderRadius.all(Radius.circular(s));
  static const BorderRadius radiusM = BorderRadius.all(Radius.circular(m));
  static const BorderRadius radiusL = BorderRadius.all(Radius.circular(l));
  static const BorderRadius radiusCircular = BorderRadius.all(Radius.circular(circular));
}

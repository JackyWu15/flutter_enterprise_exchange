import 'package:flutter/material.dart';

/// 全局颜色定义
///
/// 企业项目禁止直接使用 Colors.xxx，统一从这里取颜色。
class AppColors {
  AppColors._();

  // ===========================
  // Brand
  // ===========================

  static const Color primary = Color(0xFFFCD535);

  // ===========================
  // Background
  // ===========================

  static const Color background = Color(0xFF181A20);

  static const Color surface = Color(0xFF1E2329);

  // ===========================
  // Text
  // ===========================

  static const Color textPrimary = Color(0xFFEAECEF);

  static const Color textSecondary = Color(0xFF848E9C);

  static const Color textHint = Color(0xFF5E6673);

  // ===========================
  // Divider
  // ===========================

  static const Color divider = Color(0xFF2B3139);

  // ===========================
  // Status
  // ===========================

  static const Color success = Color(0xFF0ECB81);

  static const Color danger = Color(0xFFF6465D);

  static const Color warning = Color(0xFFF0B90B);
}
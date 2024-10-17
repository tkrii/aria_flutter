import 'package:aria/aria.dart';
import 'package:flutter/material.dart';

extension AriaColorSchemeExtension on ColorScheme {
  /// Whether the brightness is dark.
  bool get isDark => brightness.isDark;

  /// Whether the brightness is light.
  bool get isLight => brightness.isLight;

  /// AccentColor based on *Arna*
  ColorFamily get accent =>
      ExtendedColor(color: const Color(0xFF0791E7)).from(brightness);

  /// Destructive based on *Arna*
  ColorFamily get destructive =>
      ExtendedColor(color: const Color(0xFFF7072F)).from(brightness);

  /// Warning based on *Arna*
  ColorFamily get success =>
      ExtendedColor(color: const Color(0xFF26A598)).from(brightness);

  /// Success based on *Arna*
  ColorFamily get warning =>
      ExtendedColor(color: const Color(0xFFF9A72D)).from(brightness);

  Color get onSurfaceSecondary => onSurfaceVariant;

  Color get disabled => outlineVariant;
}

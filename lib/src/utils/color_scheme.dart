import 'package:aria/aria.dart';
import 'package:flutter/material.dart';

extension AriaColorSchemeExtension on ColorScheme {
  /// Whether the brightness is dark.
  bool get isDark => brightness.isDark;

  /// Whether the brightness is light.
  bool get isLight => brightness.isLight;

  /// AccentColor based on *Arna*
  ColorFamily get accent =>
      ExtendedColor(color: const Color(0xff3584e4)).from(brightness);

  /// Destructive based on *Arna*
  ColorFamily get destructive =>
      ExtendedColor(color: const Color(0xffe01b24)).from(brightness);

  /// Warning based on *Arna*
  ColorFamily get success =>
      ExtendedColor(color: const Color(0xff2ec27e)).from(brightness);

  /// Success based on *Arna*
  ColorFamily get warning =>
      ExtendedColor(color: const Color(0xffe5a50a)).from(brightness);

  Color get onSurfaceSecondary => outlineVariant;

  Color get disabled => outline;
}

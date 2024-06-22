import 'package:aria/aria.dart';
import 'package:flutter/material.dart';

extension AriaColorSchemeExtension on ColorScheme {
  /// Whether the brightness is dark.
  bool get isDark => brightness.isDark;

  /// Whether the brightness is light.
  bool get isLight => brightness.isLight;

  /// AccentColor based on *Libadwaita*
  ColorFamily get accent => ExtendedColor(value: const Color(0xff3584e4)).from(brightness);

  /// Destructive based on *Libadwaita*
  ColorFamily get destructive => ExtendedColor(value: const Color(0xffe01b24)).from(brightness);

  /// Warning based on *Libadwaita*
  ColorFamily get warning => ExtendedColor(value: const Color(0xff2ec27e)).from(brightness);

  /// Success based on *Libadwaita*
  ColorFamily get success => ExtendedColor(value: const Color(0xffe5a50a)).from(brightness);

  Color get onSurfaceSecondary => onSurface.scale(alpha: -0.4);

  Color get disabled => onSurface.scale(alpha: -0.6);
}

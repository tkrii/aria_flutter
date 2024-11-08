import 'package:aria/src/colors/extended_color.dart';
import 'package:aria/src/extensions/brightness.dart';
import 'package:aria/src/extensions/color.dart';
import 'package:flutter/material.dart' show Color, ColorScheme;

extension AriaColorSchemeExtension on ColorScheme {
  /// Whether the brightness is dark.
  bool get isDark => brightness.isDark;

  /// Whether the brightness is light.
  bool get isLight => brightness.isLight;

  /// Get hue harmonized [Color] with [primary]
  Color harmonizeWith(Color color) => primary.harmonizeWith(color);

  /// AccentColor based on [Libadwaita CSS Variables](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1.6/css-variables.html)
  ColorFamily get accent => harmonizeWith(
        const Color(0xff3584e4),
      ).extended.from(brightness);

  /// Destructive based on [Libadwaita CSS Variables](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1.6/css-variables.html)
  ColorFamily get destructive => harmonizeWith(
        const Color(0xffe01b24),
      ).extended.from(brightness);

  /// Success based on [Libadwaita CSS Variables](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1.6/css-variables.html)
  ColorFamily get success =>
      harmonizeWith(const Color(0xff2ec27e)).extended.from(brightness);

  /// Warning based on [Libadwaita CSS Variables](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1.6/css-variables.html)
  ColorFamily get warning => harmonizeWith(
        const Color(0xffe5a50a),
      ).extended.from(brightness);

  /// Color used to subtitle and low emphasis color
  Color get onSurfaceSecondary => isDark
      ? onSurface.scale(lightness: -0.25)
      : onSurface.scale(lightness: 0.25);

  /// Color used to disabled state of widgets
  Color get disabled => isDark
      ? onSurface.scale(lightness: -0.5)
      : onSurface.scale(lightness: 0.5);
}

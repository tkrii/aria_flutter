import 'package:aria/src/colors/extended_color.dart';
import 'package:aria/src/extensions/brightness.dart';
import 'package:flutter/material.dart' show Color, ColorScheme;
import 'package:material_color_utilities/blend/blend.dart';

extension AriaColorSchemeExtension on ColorScheme {
  /// Whether the brightness is dark.
  bool get isDark => brightness.isDark;

  /// Whether the brightness is light.
  bool get isLight => brightness.isLight;

  /// Get hue harmonized [Color] with [primary]
  Color harmonize(Color color) => Color(
        Blend.harmonize(
          color.value,
          primary.value,
        ),
      );

  /// AccentColor based on [Libadwaita CSS Variables](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1.6/css-variables.html)
  ColorFamily get accent => const ExtendedColor(
        color: Color(0xff3584e4),
      ).from(brightness);

  /// Destructive based on [Libadwaita CSS Variables](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1.6/css-variables.html)
  ColorFamily get destructive => const ExtendedColor(
        color: Color(
          0xffe01b24,
        ),
      ).from(brightness);

  /// Success based on [Libadwaita CSS Variables](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1.6/css-variables.html)
  ColorFamily get success => const ExtendedColor(
        color: Color(
          0xff2ec27e,
        ),
      ).from(brightness);

  /// Warning based on [Libadwaita CSS Variables](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1.6/css-variables.html)
  ColorFamily get warning => const ExtendedColor(
        color: Color(
          0xffe5a50a,
        ),
      ).from(brightness);

  /// Color used to subtitle and low emphasis color
  Color get onSurfaceSecondary => onSurface.withOpacity(0.6);

  /// Color used to disabled state of widgets
  Color get disabled => onSurface.withOpacity(0.4);
}

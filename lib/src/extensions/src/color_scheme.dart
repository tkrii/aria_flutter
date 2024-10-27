import 'package:aria/aria.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/blend/blend.dart';

extension AriaColorSchemeExtension on ColorScheme {
  /// Whether the brightness is dark.
  bool get isDark => brightness.isDark;

  /// Whether the brightness is light.
  bool get isLight => brightness.isLight;

  /// AccentColor based on [Libadwaita CSS Variables](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1.6/css-variables.html)
  ColorFamily get accent => ExtendedColor(
        color: Color(
          Blend.harmonize(
            0xff3584e4,
            primary.value,
          ),
        ),
      ).from(brightness);

  /// Destructive based on [Libadwaita CSS Variables](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1.6/css-variables.html)
  ColorFamily get destructive => ExtendedColor(
        color: Color(
          Blend.harmonize(
            0xffe01b24,
            primary.value,
          ),
        ),
      ).from(brightness);

  ColorFamily get success => ExtendedColor(
        color: Color(
          Blend.harmonize(
            0xff2ec27e,
            primary.value,
          ),
        ),
      ).from(brightness);

  ColorFamily get warning => ExtendedColor(
        color: Color(
          Blend.harmonize(
            0xffe5a50a,
            primary.value,
          ),
        ),
      ).from(brightness);

  Color get onSurfaceSecondary => onSurface.scale(
        alpha: -(1 / 3),
      );

  Color get disabled => outline.scale(
        alpha: -0.4,
      );
}

import 'package:aria/src/colors/src/extended_color.dart';
import 'package:aria/src/extensions/src/brightness.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/blend/blend.dart';
import 'package:material_color_utilities/hct/hct.dart';
import 'package:material_color_utilities/palettes/tonal_palette.dart';

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

  /// Success based on [Libadwaita CSS Variables](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1.6/css-variables.html)
  ColorFamily get success => ExtendedColor(
        color: Color(
          Blend.harmonize(
            0xff2ec27e,
            primary.value,
          ),
        ),
      ).from(brightness);

  /// Warning based on [Libadwaita CSS Variables](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1.6/css-variables.html)
  ColorFamily get warning => ExtendedColor(
        color: Color(
          Blend.harmonize(
            0xffe5a50a,
            primary.value,
          ),
        ),
      ).from(brightness);

  /// Color used to subtitle and low emphasis color
  Color get onSurfaceSecondary {
    final tonal = TonalPalette.fromHct(
      Hct.fromInt(onSurface.value),
    );
    return isLight ? Color(tonal.get(46)) : Color(tonal.get(74));
  }

  Color get disabled {
    final tonal = TonalPalette.fromHct(
      Hct.fromInt(onSurface.value),
    );
    return isLight ? Color(tonal.get(90)) : Color(tonal.get(22));
  }
}

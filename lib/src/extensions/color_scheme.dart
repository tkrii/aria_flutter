import 'package:aria/src/colors/extended_color.dart';
import 'package:aria/src/extensions/brightness.dart';
import 'package:aria/src/extensions/color.dart';
import 'package:flutter/material.dart' show Color, ColorScheme;
import 'package:material_color_utilities/hct/hct.dart';
import 'package:material_color_utilities/palettes/tonal_palette.dart';

extension AriaColorSchemeExtension on ColorScheme {
  /// Whether the brightness is dark.
  bool get isDark => brightness.isDark;

  /// Whether the brightness is light.
  bool get isLight => brightness.isLight;

  /// Get hue harmonized [Color] with [primary]
  Color harmonize(Color color) => primary.harmonize(color);

  /// AccentColor based on [Libadwaita CSS Variables](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1.6/css-variables.html)
  ColorFamily get accent => const Color(0xff3584e4).extended.from(brightness);

  /// Destructive based on [Libadwaita CSS Variables](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1.6/css-variables.html)
  ColorFamily get destructive =>
      const Color(0xffe01b24).extended.from(brightness);

  /// Success based on [Libadwaita CSS Variables](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1.6/css-variables.html)
  ColorFamily get success => const Color(0xff2ec27e).extended.from(brightness);

  /// Warning based on [Libadwaita CSS Variables](https://gnome.pages.gitlab.gnome.org/libadwaita/doc/1.6/css-variables.html)
  ColorFamily get warning => const Color(0xffe5a50a).extended.from(brightness);

  /// Color used to subtitle and low emphasis color
  Color get onSurfaceSecondary {
    final onColor = TonalPalette.fromHct(
      Hct.fromInt(onSurface.value),
    );
    return Color(
      isLight ? onColor.get(45) : onColor.get(63),
    );
  }

  /// Color used to disabled state of widgets
  Color get disabled {
    final onColor = TonalPalette.fromHct(
      Hct.fromInt(onSurface.value),
    );
    return Color(
      isLight ? onColor.get(55) : onColor.get(47),
    );
  }
}

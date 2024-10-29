import 'package:aria/aria.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class AriaTheme {
  final Color primary;
  final Color? secondary;
  final Color? tertiary;

  const AriaTheme({
    this.primary = const Color(0xff3584e4),
    this.secondary,
    this.tertiary,
  });

  ThemeData light([double contrastValue = 0.0]) => lightTheme(
        dynamicScheme: _dynamicScheme(
          false,
          contrastValue,
        ),
      );

  ThemeData dark([double contrastValue = 0.0]) => darkTheme(
        dynamicScheme: _dynamicScheme(
          false,
          contrastValue,
        ),
      );

  ThemeData from(Brightness brightness, [double contrastValue = 0.0]) =>
      brightness.isDark ? dark(contrastValue) : light(contrastValue);

  ThemeData of(BuildContext context) => from(
        Theme.of(context).brightness,
        MediaQuery.of(context).highContrast ? 0.0 : 1.0,
      );

  DynamicScheme _dynamicScheme(
    bool isDark,
    double contrastValue,
  ) {
    double hueFromColor(Color color) => Hct.fromInt(color.value).hue;
    TonalPalette fromColor(Color color) => TonalPalette.fromHct(
          Hct.fromInt(color.value),
        );

    return DynamicScheme(
      contrastLevel: contrastValue,
      isDark: isDark,
      sourceColorArgb: primary.value,
      variant: Variant.expressive,
      primaryPalette: fromColor(primary),
      secondaryPalette: secondary != null
          ? fromColor(secondary!)
          : TonalPalette.fromHct(
              DislikeAnalyzer.fixIfDisliked(
                TemperatureCache(
                  Hct.fromInt(primary.value),
                ).analogous()[3],
              ),
            ),
      tertiaryPalette: tertiary != null
          ? fromColor(tertiary!)
          : TonalPalette.fromHct(
              DislikeAnalyzer.fixIfDisliked(
                TemperatureCache(
                  Hct.fromInt(primary.value),
                ).complement,
              ),
            ),
      neutralPalette: TonalPalette.of(
        hueFromColor(primary),
        2.0,
      ),
      neutralVariantPalette: TonalPalette.of(
        hueFromColor(primary),
        10.0,
      ),
    );
  }
}

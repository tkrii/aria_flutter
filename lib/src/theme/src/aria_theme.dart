import 'package:aria/src/extensions/src/brightness.dart';
import 'package:aria/src/theme/src/dark_theme.dart';
import 'package:aria/src/theme/src/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/dislike/dislike_analyzer.dart';
import 'package:material_color_utilities/dynamiccolor/dynamic_scheme.dart';
import 'package:material_color_utilities/dynamiccolor/variant.dart';
import 'package:material_color_utilities/hct/hct.dart';
import 'package:material_color_utilities/palettes/tonal_palette.dart';
import 'package:material_color_utilities/temperature/temperature_cache.dart';

class AriaTheme {
  /// Base color for create [AriaTheme]
  final Color primary;

  /// Use in case of need custom secondary [Color]
  ///
  /// From default generate a [TonalPalette] with analog primary color
  final Color? secondary;

  /// Use in case of need custom tertiary [Color]
  ///
  /// From default generate a [TonalPalette] with contrast primary color
  final Color? tertiary;

  /// Custom theme using [primary] color base
  const AriaTheme({
    this.primary = const Color(0xff808080),
    this.secondary,
    this.tertiary,
  });

  /// Generate theme for light brightness
  /// [contrastValue] from -1 to 1. -1 represents minimum contrast, 0 represents
  /// standard (i.e. the design as spec'd), and 1 represents maximum contrast.
  ThemeData light([double contrastValue = 0.0]) => lightTheme(
        dynamicScheme: _dynamicScheme(
          false,
          contrastValue,
        ),
      );

  /// Generate theme for dark brightness
  /// [contrastValue] from -1 to 1. -1 represents minimum contrast, 0 represents
  /// standard (i.e. the design as spec'd), and 1 represents maximum contrast.
  ThemeData dark([double contrastValue = 0.0]) => darkTheme(
        dynamicScheme: _dynamicScheme(
          false,
          contrastValue,
        ),
      );

  /// Generate theme from [brightness] value
  /// [contrastValue] from -1 to 1. -1 represents minimum contrast, 0 represents
  /// standard (i.e. the design as spec'd), and 1 represents maximum contrast.
  ThemeData from(Brightness brightness, [double contrastValue = 0.0]) =>
      brightness.isDark ? dark(contrastValue) : light(contrastValue);

  /// Generate theme from [context] value
  ThemeData of(BuildContext context) => from(
        Theme.of(context).brightness,
        MediaQuery.of(context).highContrast ? 0.0 : 1.0,
      );

  DynamicScheme _dynamicScheme(
    bool isDark,
    double contrastValue,
  ) {
    double hueFromColor(Color color) => Hct.fromInt(color.value).hue;

    TonalPalette paletteFromColor(Color color) => TonalPalette.fromHct(
          Hct.fromInt(color.value),
        );

    return DynamicScheme(
      contrastLevel: contrastValue,
      isDark: isDark,
      sourceColorArgb: primary.value,
      variant: Variant.expressive,
      primaryPalette: paletteFromColor(primary),
      secondaryPalette: secondary != null
          ? paletteFromColor(secondary!)
          : TonalPalette.fromHct(
              DislikeAnalyzer.fixIfDisliked(
                TemperatureCache(
                  Hct.fromInt(primary.value),
                ).analogous()[3],
              ),
            ),
      tertiaryPalette: tertiary != null
          ? paletteFromColor(tertiary!)
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

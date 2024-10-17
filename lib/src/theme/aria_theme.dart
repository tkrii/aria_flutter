import 'dart:math' as math;

import 'package:aria/aria.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/dislike/dislike_analyzer.dart';
import 'package:material_color_utilities/dynamiccolor/dynamic_scheme.dart';
import 'package:material_color_utilities/dynamiccolor/variant.dart';
import 'package:material_color_utilities/hct/hct.dart';
import 'package:material_color_utilities/palettes/tonal_palette.dart';
import 'package:material_color_utilities/temperature/temperature_cache.dart';

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
        dynamicScheme: _dynamicScheme(false, contrastValue),
      );

  ThemeData dark([double contrastValue = 0.0]) => darkTheme(
        dynamicScheme: _dynamicScheme(false, contrastValue),
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
          : TonalPalette.of(
              Hct.fromInt(primary.value).hue,
              math.max(
                Hct.fromInt(primary.value).chroma - 32.0,
                Hct.fromInt(primary.value).chroma * 0.5,
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
        Hct.fromInt(primary.value).hue,
        Hct.fromInt(primary.value).chroma / 64,
      ),
      neutralVariantPalette: TonalPalette.of(
        Hct.fromInt(primary.value).hue,
        Hct.fromInt(primary.value).chroma / 4,
      ),
    );
  }
}

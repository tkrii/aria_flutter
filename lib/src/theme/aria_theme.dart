import 'package:aria/aria.dart';
import 'package:aria/src/theme/dark_theme.dart';
import 'package:aria/src/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/dislike/dislike_analyzer.dart';
import 'package:material_color_utilities/hct/hct.dart';
import 'package:material_color_utilities/palettes/tonal_palette.dart';
import 'package:material_color_utilities/scheme/dynamic_scheme.dart';
import 'package:material_color_utilities/scheme/variant.dart';
import 'package:material_color_utilities/temperature/temperature_cache.dart';

class AriaTheme {
  final Color primary;
  final Color? secondary;
  final Color? tertiary;
  final int? neutral;

  const AriaTheme({
    this.primary = const Color(0xff3584e4),
    this.secondary,
    this.tertiary,
    this.neutral = 0xff2e3033,
  });

  DynamicScheme _dynamicScheme(bool isDark, double contrastValue) {
    TonalPalette neutralPalette = TonalPalette.of(
      Hct.fromInt(neutral!).hue,
      Hct.fromInt(neutral!).chroma,
    );
    return DynamicScheme(
        contrastLevel: contrastValue,
        isDark: isDark,
        sourceColorArgb: primary.value,
        variant: Variant.content,
        primaryPalette: TonalPalette.of(
          Hct.fromInt(primary.value).hue,
          Hct.fromInt(primary.value).chroma,
        ),
        secondaryPalette: secondary != null
            ? TonalPalette.of(
                Hct.fromInt(secondary!.value).hue,
                Hct.fromInt(secondary!.value).chroma,
              )
            : TonalPalette.of(
                Hct.fromInt(primary.value).hue,
              (Hct.fromInt(primary.value).chroma / 2.0) 
              ),
        tertiaryPalette: tertiary != null
            ? TonalPalette.of(
                Hct.fromInt(tertiary!.value).hue,
                Hct.fromInt(tertiary!.value).chroma,
              )
            : TonalPalette.fromHct(
                DislikeAnalyzer.fixIfDisliked(
                  TemperatureCache(
                    Hct.fromInt(primary.value),
                  ).complement,
                ),
              ),
      neutralPalette: neutralPalette,
        neutralVariantPalette: TonalPalette.of(
          Hct.fromInt(primary.value).hue,
          (Hct.fromInt(primary.value).chroma / 3.0),
        ),
      );
}
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
}

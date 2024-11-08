import 'package:flutter/material.dart' show ColorScheme, Brightness, Color;
import 'package:material_color_utilities/dynamiccolor/dynamic_scheme.dart';

/// Generate [ColorScheme] from [dynamicScheme] using libadwaita guideline
ColorScheme adwaitaLightScheme({
  required DynamicScheme dynamicScheme,
}) =>
    ColorScheme(
      brightness: Brightness.light,
      primaryFixed: Color(
        dynamicScheme.primaryPaletteKeyColor,
      ),
      primary: Color(dynamicScheme.primary),
      onPrimary: Color(dynamicScheme.onPrimary),
      secondary: Color(dynamicScheme.secondary),
      onSecondary: Color(dynamicScheme.onSecondary),
      tertiary: Color(dynamicScheme.tertiary),
      onTertiary: Color(dynamicScheme.onTertiary),
      error: Color(dynamicScheme.error),
      onError: Color(dynamicScheme.onError),
      primaryContainer: Color(dynamicScheme.primaryContainer),
      onPrimaryContainer: Color(dynamicScheme.onPrimaryContainer),
      secondaryContainer: Color(dynamicScheme.secondaryContainer),
      onSecondaryContainer: Color(dynamicScheme.onSecondaryContainer),
      tertiaryContainer: Color(dynamicScheme.tertiaryContainer),
      onTertiaryContainer: Color(dynamicScheme.onTertiaryContainer),
      errorContainer: Color(dynamicScheme.errorContainer),
      onErrorContainer: Color(dynamicScheme.onErrorContainer),
      surfaceDim: Color(dynamicScheme.surfaceDim),
      surface: const Color(0xfffafafa),
      surfaceBright: Color(
        dynamicScheme.neutralVariantPalette.get(94),
      ),
      surfaceContainerLowest: const Color(0xffebebeb),
      surfaceContainerLow: const Color(0xffffffff),
      surfaceContainer: const Color(0xffffffff),
      surfaceContainerHigh: const Color(0xfffdfdfd),
      surfaceContainerHighest: const Color(0xffebebeb),
      onSurface: Color(
        dynamicScheme.neutralPalette.get(20),
      ),
      onSurfaceVariant: Color(
        dynamicScheme.neutralVariantPalette.get(20),
      ),
      outline: Color(
        dynamicScheme.neutralPalette.get(69),
      ),
      outlineVariant: Color(
        dynamicScheme.neutralVariantPalette.get(84),
      ),
      inverseSurface: const Color(0xff4d4d4d),
      onInverseSurface: const Color(0xffededed),
      inversePrimary: Color(dynamicScheme.inversePrimary),
      scrim: Color(dynamicScheme.scrim),
      shadow: Color(dynamicScheme.shadow),
    );

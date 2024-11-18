import 'package:flutter/material.dart' show ColorScheme, Brightness, Color;
import 'package:material_color_utilities/dynamiccolor/dynamic_scheme.dart';

/// Generate [ColorScheme] from [dynamicScheme] using adwaita guideline
ColorScheme adwaitaLightScheme({
  required DynamicScheme dynamicScheme,
}) =>
    ColorScheme(
      brightness: Brightness.light,
      primaryFixed: Color(dynamicScheme.primaryPaletteKeyColor),
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
      secondaryContainer: Color(
        dynamicScheme.neutralVariantPalette.get(92),
      ),
      onSecondaryContainer: Color(
        dynamicScheme.neutralVariantPalette.get(14),
      ),
      tertiaryContainer: Color(dynamicScheme.tertiaryContainer),
      onTertiaryContainer: Color(dynamicScheme.onTertiaryContainer),
      errorContainer: Color(dynamicScheme.errorContainer),
      onErrorContainer: Color(dynamicScheme.onErrorContainer),
      surfaceDim: Color(dynamicScheme.surfaceDim),
      surface: Color(
        dynamicScheme.neutralPalette.get(98),
      ),
      surfaceBright: Color(
        dynamicScheme.neutralVariantPalette.get(94),
      ),
      surfaceContainerLowest: Color(
        dynamicScheme.neutralVariantPalette.get(93),
      ),
      surfaceContainerLow: Color(
        dynamicScheme.neutralVariantPalette.get(100),
      ),
      surfaceContainer: Color(
        dynamicScheme.neutralVariantPalette.get(100),
      ),
      surfaceContainerHigh: Color(
        dynamicScheme.neutralVariantPalette.get(100),
      ),
      surfaceContainerHighest: Color(
        dynamicScheme.neutralVariantPalette.get(93),
      ),
      onSurface: Color(
        dynamicScheme.neutralPalette.get(14),
      ),
      onSurfaceVariant: Color(dynamicScheme.onSurfaceVariant),
      outline: Color(dynamicScheme.outline),
      outlineVariant: Color(dynamicScheme.outlineVariant),
      inverseSurface: Color(
        dynamicScheme.neutralVariantPalette.get(33),
      ),
      onInverseSurface: Color(
        dynamicScheme.neutralVariantPalette.get(94),
      ),
      inversePrimary: Color(dynamicScheme.inversePrimary),
      scrim: Color(dynamicScheme.scrim),
      shadow: Color(dynamicScheme.shadow),
    );

import 'package:flutter/material.dart' show ColorScheme, Brightness, Color;
import 'package:material_color_utilities/dynamiccolor/dynamic_scheme.dart';

/// Generate [ColorScheme] from [dynamicScheme] using libadwaita guideline
ColorScheme adwaitaDarkScheme({
  required DynamicScheme dynamicScheme,
}) =>
    ColorScheme(
      brightness: Brightness.dark,
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
        dynamicScheme.neutralVariantPalette.get(29),
      ),
      onSecondaryContainer: Color(
        dynamicScheme.neutralVariantPalette.get(98),
      ),
      tertiaryContainer: Color(dynamicScheme.tertiaryContainer),
      onTertiaryContainer: Color(dynamicScheme.onTertiaryContainer),
      errorContainer: Color(dynamicScheme.errorContainer),
      onErrorContainer: Color(dynamicScheme.onErrorContainer),
      surfaceDim: Color(dynamicScheme.surfaceDim),
      surface: Color(
        dynamicScheme.neutralPalette.get(14),
      ),
      surfaceBright: Color(
        dynamicScheme.neutralVariantPalette.get(16),
      ),
      surfaceContainerLowest: Color(
        dynamicScheme.neutralPalette.get(30),
      ),
      surfaceContainerLow: Color(
        dynamicScheme.neutralPalette.get(26),
      ),
      surfaceContainer: Color(
        dynamicScheme.neutralPalette.get(20),
      ),
      surfaceContainerHigh: Color(
        dynamicScheme.neutralPalette.get(24),
      ),
      surfaceContainerHighest: Color(
        dynamicScheme.neutralPalette.get(30),
      ),
      onSurface: Color(
        dynamicScheme.neutralPalette.get(100),
      ),
      onSurfaceVariant: Color(dynamicScheme.onSurfaceVariant),
      outline: Color(dynamicScheme.outline),
      outlineVariant: Color(dynamicScheme.outlineVariant),
      inverseSurface: Color(
        dynamicScheme.neutralVariantPalette.get(2),
      ),
      onInverseSurface: Color(
        dynamicScheme.neutralVariantPalette.get(100),
      ),
      inversePrimary: Color(
        dynamicScheme.neutralVariantPalette.get(29),
      ),
      scrim: Color(dynamicScheme.scrim),
      shadow: Color(dynamicScheme.shadow),
    );

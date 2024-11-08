import 'package:flutter/material.dart' show ColorScheme, Brightness, Color;
import 'package:material_color_utilities/dynamiccolor/dynamic_scheme.dart';

/// Generate [ColorScheme] from [dynamicScheme] using libadwaita guideline
ColorScheme adwaitaDarkScheme({
  required DynamicScheme dynamicScheme,
}) =>
    ColorScheme(
      brightness: Brightness.dark,
      primaryFixed: Color(
        dynamicScheme.primaryPaletteKeyColor,
      ),
      onPrimaryFixed: Color(
        dynamicScheme.onSurface,
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
      surfaceDim: const Color(0xff454545),
      surface: const Color(0xff242424), //0xff131416),
      surfaceBright: Color(
        dynamicScheme.neutralVariantPalette.get(14),
      ),
      surfaceContainerLowest: const Color(0xff484848),
      surfaceContainerLow: const Color(0xff363636),
      surfaceContainer: const Color(0xff303030),
      surfaceContainerHigh: const Color(0xff383838),
      surfaceContainerHighest: const Color(0xff484848),
      onSurface: const Color(0xffffffff),
      onSurfaceVariant: Color(
        dynamicScheme.neutralVariantPalette.get(90),
      ),
      outline: Color(
        dynamicScheme.neutralPalette.get(55),
      ),
      outlineVariant: Color(
        dynamicScheme.neutralVariantPalette.get(36),
      ),
      inverseSurface: const Color(0xff060607),
      onInverseSurface: const Color(0xffffffff),
      inversePrimary: const Color(0xff454545),
      scrim: Color(
        dynamicScheme.neutralPalette.get(0),
      ),
      shadow: Color(
        dynamicScheme.neutralPalette.get(0),
      ),
    );

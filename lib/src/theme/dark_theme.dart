import 'package:aria/src/theme/scheme_theme.dart';
import 'package:flutter/material.dart'
    show ThemeData, ColorScheme, Brightness, Color;
import 'package:material_color_utilities/dynamiccolor/dynamic_scheme.dart';

/// Generate [ThemeData] from [dynamicScheme] using MD3 guideline
ThemeData materialDarkTheme({
  required DynamicScheme dynamicScheme,
}) {
  final colorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(
      dynamicScheme.primaryPalette.get(80),
    ),
    onPrimary: Color(
      dynamicScheme.primaryPalette.get(20),
    ),
    secondary: Color(
      dynamicScheme.secondaryPalette.get(80),
    ),
    onSecondary: Color(
      dynamicScheme.secondaryPalette.get(20),
    ),
    tertiary: Color(
      dynamicScheme.tertiaryPalette.get(80),
    ),
    onTertiary: Color(
      dynamicScheme.tertiaryPalette.get(20),
    ),
    error: Color(
      dynamicScheme.errorPalette.get(80),
    ),
    onError: Color(
      dynamicScheme.errorPalette.get(20),
    ),
    primaryContainer: Color(
      dynamicScheme.primaryPalette.get(30),
    ),
    onPrimaryContainer: Color(
      dynamicScheme.primaryPalette.get(90),
    ),
    secondaryContainer: Color(
      dynamicScheme.secondaryPalette.get(30),
    ),
    onSecondaryContainer: Color(
      dynamicScheme.secondaryPalette.get(90),
    ),
    tertiaryContainer: Color(
      dynamicScheme.tertiaryPalette.get(30),
    ),
    onTertiaryContainer: Color(
      dynamicScheme.tertiaryPalette.get(90),
    ),
    errorContainer: Color(
      dynamicScheme.errorPalette.get(30),
    ),
    onErrorContainer: Color(
      dynamicScheme.errorPalette.get(90),
    ),
    surfaceDim: Color(
      dynamicScheme.neutralVariantPalette.get(6),
    ),
    surface: Color(
      dynamicScheme.neutralPalette.get(6),
    ),
    surfaceBright: Color(
      dynamicScheme.neutralVariantPalette.get(24),
    ),
    surfaceContainerLowest: Color(
      dynamicScheme.neutralPalette.get(4),
    ),
    surfaceContainerLow: Color(
      dynamicScheme.neutralPalette.get(10),
    ),
    surfaceContainer: Color(
      dynamicScheme.neutralPalette.get(12),
    ),
    surfaceContainerHigh: Color(
      dynamicScheme.neutralPalette.get(17),
    ),
    surfaceContainerHighest: Color(
      dynamicScheme.neutralPalette.get(24),
    ),
    onSurface: Color(
      dynamicScheme.neutralPalette.get(90),
    ),
    onSurfaceVariant: Color(
      dynamicScheme.neutralVariantPalette.get(90),
    ),
    outline: Color(
      dynamicScheme.neutralPalette.get(60),
    ),
    outlineVariant: Color(
      dynamicScheme.neutralVariantPalette.get(30),
    ),
    inverseSurface: Color(
      dynamicScheme.neutralVariantPalette.get(90),
    ),
    onInverseSurface: Color(
      dynamicScheme.neutralVariantPalette.get(20),
    ),
    inversePrimary: Color(
      dynamicScheme.primaryPalette.get(40),
    ),
    scrim: Color(
      dynamicScheme.neutralPalette.get(0),
    ),
    shadow: Color(
      dynamicScheme.neutralPalette.get(0),
    ),
  );
  return createAriaTheme(
    colorScheme,
  );
}

/// Generate [ThemeData] from [dynamicScheme] using libadwaita guideline
ThemeData adwaitaDarkTheme({
  required DynamicScheme dynamicScheme,
}) {
  final colorScheme = ColorScheme(
    brightness: Brightness.dark,
    primaryFixed: Color(
      dynamicScheme.primaryPalette.get(55),
    ),
    primary: Color(
      dynamicScheme.primaryPalette.get(81),
    ),
    onPrimary: Color(
      dynamicScheme.primaryPalette.get(12),
    ),
    secondary: Color(
      dynamicScheme.secondaryPalette.get(81),
    ),
    onSecondary: Color(
      dynamicScheme.secondaryPalette.get(12),
    ),
    tertiary: Color(
      dynamicScheme.tertiaryPalette.get(81),
    ),
    onTertiary: Color(
      dynamicScheme.tertiaryPalette.get(12),
    ),
    error: Color(
      dynamicScheme.errorPalette.get(81),
    ),
    onError: Color(
      dynamicScheme.errorPalette.get(12),
    ),
    primaryContainer: Color(
      dynamicScheme.primaryPalette.get(30),
    ),
    onPrimaryContainer: Color(
      dynamicScheme.primaryPalette.get(95),
    ),
    secondaryContainer: Color(
      dynamicScheme.secondaryPalette.get(30),
    ),
    onSecondaryContainer: Color(
      dynamicScheme.secondaryPalette.get(95),
    ),
    tertiaryContainer: Color(
      dynamicScheme.tertiaryPalette.get(30),
    ),
    onTertiaryContainer: Color(
      dynamicScheme.tertiaryPalette.get(95),
    ),
    errorContainer: Color(
      dynamicScheme.errorPalette.get(30),
    ),
    onErrorContainer: Color(
      dynamicScheme.errorPalette.get(95),
    ),
    surfaceDim: Color(
      dynamicScheme.neutralPalette.get(30),
    ),
    surface: Color(
      dynamicScheme.neutralPalette.get(14),
    ),
    surfaceBright: Color(
      dynamicScheme.neutralVariantPalette.get(20),
    ),
    surfaceContainerLowest: Color(
      dynamicScheme.neutralPalette.get(32),
    ),
    surfaceContainerLow: Color(
      dynamicScheme.neutralPalette.get(22),
    ),
    surfaceContainer: Color(
      dynamicScheme.neutralPalette.get(20),
    ),
    surfaceContainerHigh: Color(
      dynamicScheme.neutralPalette.get(23),
    ),
    surfaceContainerHighest: Color(
      dynamicScheme.neutralPalette.get(20),
    ),
    onSurface: const Color(0xffffffff),
    onSurfaceVariant: Color(
      dynamicScheme.neutralVariantPalette.get(90),
    ),
    outline: Color(
      dynamicScheme.neutralPalette.get(60),
    ),
    outlineVariant: Color(
      dynamicScheme.neutralVariantPalette.get(30),
    ),
    inverseSurface: Color(
      dynamicScheme.neutralVariantPalette.get(98),
    ),
    onInverseSurface: Color(
      dynamicScheme.neutralVariantPalette.get(14),
    ),
    inversePrimary: Color(
      dynamicScheme.primaryPalette.get(41),
    ),
    scrim: Color(
      dynamicScheme.neutralPalette.get(0),
    ),
    shadow: Color(
      dynamicScheme.neutralPalette.get(0),
    ),
  );
  return createAriaTheme(
    colorScheme,
  );
}

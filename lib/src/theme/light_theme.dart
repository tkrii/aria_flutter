import 'package:aria/src/theme/scheme_theme.dart';
import 'package:flutter/material.dart'
    show ThemeData, ColorScheme, Brightness, Color;
import 'package:material_color_utilities/dynamiccolor/dynamic_scheme.dart';

/// Generate [ThemeData] from [dynamicScheme] using MD3 guideline
ThemeData materialLightTheme({
  required DynamicScheme dynamicScheme,
}) {
  final colorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(
      dynamicScheme.primaryPalette.get(40),
    ),
    onPrimary: Color(
      dynamicScheme.primaryPalette.get(100),
    ),
    secondary: Color(
      dynamicScheme.secondaryPalette.get(40),
    ),
    onSecondary: Color(
      dynamicScheme.secondaryPalette.get(100),
    ),
    tertiary: Color(
      dynamicScheme.tertiaryPalette.get(40),
    ),
    onTertiary: Color(
      dynamicScheme.tertiaryPalette.get(100),
    ),
    error: Color(
      dynamicScheme.errorPalette.get(40),
    ),
    onError: Color(
      dynamicScheme.errorPalette.get(100),
    ),
    primaryContainer: Color(
      dynamicScheme.primaryPalette.get(90),
    ),
    onPrimaryContainer: Color(
      dynamicScheme.primaryPalette.get(10),
    ),
    secondaryContainer: Color(
      dynamicScheme.secondaryPalette.get(90),
    ),
    onSecondaryContainer: Color(
      dynamicScheme.secondaryPalette.get(10),
    ),
    tertiaryContainer: Color(
      dynamicScheme.tertiaryPalette.get(90),
    ),
    onTertiaryContainer: Color(
      dynamicScheme.tertiaryPalette.get(10),
    ),
    errorContainer: Color(
      dynamicScheme.errorPalette.get(90),
    ),
    onErrorContainer: Color(
      dynamicScheme.errorPalette.get(10),
    ),
    surfaceDim: Color(
      dynamicScheme.neutralVariantPalette.get(87),
    ),
    surface: Color(
      dynamicScheme.neutralPalette.get(98),
    ),
    surfaceBright: Color(
      dynamicScheme.neutralVariantPalette.get(98),
    ),
    surfaceContainerLowest: Color(
      dynamicScheme.neutralPalette.get(100),
    ),
    surfaceContainerLow: Color(
      dynamicScheme.neutralPalette.get(96),
    ),
    surfaceContainer: Color(
      dynamicScheme.neutralPalette.get(94),
    ),
    surfaceContainerHigh: Color(
      dynamicScheme.neutralPalette.get(92),
    ),
    surfaceContainerHighest: Color(
      dynamicScheme.neutralPalette.get(90),
    ),
    onSurface: Color(
      dynamicScheme.neutralPalette.get(10),
    ),
    onSurfaceVariant: Color(
      dynamicScheme.neutralVariantPalette.get(30),
    ),
    outline: Color(
      dynamicScheme.neutralPalette.get(50),
    ),
    outlineVariant: Color(
      dynamicScheme.neutralVariantPalette.get(80),
    ),
    inverseSurface: Color(
      dynamicScheme.neutralVariantPalette.get(20),
    ),
    onInverseSurface: Color(
      dynamicScheme.neutralVariantPalette.get(95),
    ),
    inversePrimary: Color(
      dynamicScheme.primaryPalette.get(80),
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
ThemeData adwaitalLightTheme({
  required DynamicScheme dynamicScheme,
}) {
  final colorScheme = ColorScheme(
    brightness: Brightness.light,
    primaryFixed: Color(
      dynamicScheme.primaryPalette.get(55),
    ),
    primary: Color(
      dynamicScheme.primaryPalette.get(42),
    ),
    onPrimary: Color(
      dynamicScheme.primaryPalette.get(100),
    ),
    secondary: Color(
      dynamicScheme.secondaryPalette.get(42),
    ),
    onSecondary: Color(
      dynamicScheme.secondaryPalette.get(100),
    ),
    tertiary: Color(
      dynamicScheme.tertiaryPalette.get(42),
    ),
    onTertiary: Color(
      dynamicScheme.tertiaryPalette.get(100),
    ),
    error: Color(
      dynamicScheme.errorPalette.get(42),
    ),
    onError: Color(
      dynamicScheme.errorPalette.get(100),
    ),
    primaryContainer: Color(
      dynamicScheme.primaryPalette.get(92),
    ),
    onPrimaryContainer: Color(
      dynamicScheme.primaryPalette.get(14),
    ),
    secondaryContainer: Color(
      dynamicScheme.secondaryPalette.get(92),
    ),
    onSecondaryContainer: Color(
      dynamicScheme.secondaryPalette.get(14),
    ),
    tertiaryContainer: Color(
      dynamicScheme.tertiaryPalette.get(92),
    ),
    onTertiaryContainer: Color(
      dynamicScheme.tertiaryPalette.get(14),
    ),
    errorContainer: Color(
      dynamicScheme.errorPalette.get(92),
    ),
    onErrorContainer: Color(
      dynamicScheme.errorPalette.get(14),
    ),
    surfaceDim: Color(
      dynamicScheme.neutralVariantPalette.get(94),
    ),
    surface: Color(
      dynamicScheme.neutralPalette.get(99),
    ),
    surfaceBright: Color(
      dynamicScheme.neutralVariantPalette.get(96),
    ),
    surfaceContainerLowest: Color(
      dynamicScheme.neutralPalette.get(96),
    ),
    surfaceContainerLow: const Color(0xffffffff),
    surfaceContainer: const Color(0xffffffff),
    surfaceContainerHigh: const Color(0xffffffff),
    surfaceContainerHighest: Color(
      dynamicScheme.neutralPalette.get(93),
    ),
    onSurface: Color(
      dynamicScheme.neutralPalette.get(14),
    ),
    onSurfaceVariant: Color(
      dynamicScheme.neutralVariantPalette.get(30),
    ),
    outline: Color(
      dynamicScheme.neutralPalette.get(50),
    ),
    outlineVariant: Color(
      dynamicScheme.neutralVariantPalette.get(80),
    ),
    inverseSurface: Color(
      dynamicScheme.neutralVariantPalette.get(14),
    ),
    onInverseSurface: Color(
      dynamicScheme.neutralVariantPalette.get(100),
    ),
    inversePrimary: Color(
      dynamicScheme.primaryPalette.get(80),
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

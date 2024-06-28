import 'package:aria/src/theme/scheme_theme.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/scheme/dynamic_scheme.dart';

ThemeData lightTheme({
  required DynamicScheme dynamicScheme,
}) {
  ColorScheme colorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(
      dynamicScheme.primaryPalette.get(40),
    ),
    inversePrimary: Color(
      dynamicScheme.primaryPalette.get(80),
    ),
    onPrimary: Color(
      dynamicScheme.primaryPalette.get(100),
    ),
    primaryContainer: Color(
      dynamicScheme.primaryPalette.get(90),
    ),
    onPrimaryContainer: Color(
      dynamicScheme.primaryPalette.get(10),
    ),
    secondary: Color(
      dynamicScheme.secondaryPalette.get(40),
    ),
    onSecondary: Color(
      dynamicScheme.secondaryPalette.get(100),
    ),
    secondaryContainer: Color(
      dynamicScheme.secondaryPalette.get(90),
    ),
    onSecondaryContainer: Color(
      dynamicScheme.secondaryPalette.get(10),
    ),
    tertiary: Color(
      dynamicScheme.tertiaryPalette.get(40),
    ),
    onTertiary: Color(
      dynamicScheme.tertiaryPalette.get(100),
    ),
    tertiaryContainer: Color(
      dynamicScheme.tertiaryPalette.get(90),
    ),
    onTertiaryContainer: Color(
      dynamicScheme.tertiaryPalette.get(10),
    ),
    error: Color(
      dynamicScheme.errorPalette.get(40),
    ),
    onError: Color(
      dynamicScheme.errorPalette.get(100),
    ),
    errorContainer: Color(
      dynamicScheme.errorPalette.get(90),
    ),
    onErrorContainer: Color(
      dynamicScheme.errorPalette.get(10),
    ),
    scrim: Color(
      dynamicScheme.neutralPalette.get(0),
    ),
    shadow: Color(
      dynamicScheme.neutralPalette.get(0),
    ),
    surfaceDim: Color(
      dynamicScheme.neutralPalette.get(87),
    ),
    surface: Color(
      dynamicScheme.neutralPalette.get(98),
    ),
    surfaceBright: Color(
      dynamicScheme.neutralPalette.get(100),
    ),
    surfaceTint: Color(
      dynamicScheme.neutralPalette.get(100),
    ),
    inverseSurface: Color(
      dynamicScheme.neutralPalette.get(14),
    ),
    onSurface: Color(
      dynamicScheme.neutralPalette.get(10),
    ),
    onInverseSurface: Color(
      dynamicScheme.neutralPalette.get(95),
    ),
    // View color
    surfaceContainerLowest: Color(
      dynamicScheme.neutralPalette.get(100),
    ),
    // Header bar
    surfaceContainerLow: Color(
      dynamicScheme.neutralPalette.get(100),
    ),
    surfaceContainer: Color(
      dynamicScheme.neutralPalette.get(100),
    ),
    // Secondary sidebar
    surfaceContainerHigh: Color(
      dynamicScheme.neutralPalette.get(95),
    ),
    // Sidebar
    surfaceContainerHighest: Color(
      dynamicScheme.neutralPalette.get(92),
    ),
    onSurfaceVariant: Color(
      dynamicScheme.neutralVariantPalette.get(30),
    ),
    outline: Color(
      dynamicScheme.neutralPalette.get(70),
    ),
    outlineVariant: Color(
      dynamicScheme.neutralVariantPalette.get(60),
    ),
  );
  return createAriaTheme(colorScheme);
}

import 'package:aria/src/theme/scheme_theme.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/scheme/dynamic_scheme.dart';

ThemeData darkTheme({
  required DynamicScheme dynamicScheme,
}) {
  ColorScheme colorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(
      dynamicScheme.primaryPalette.get(80),
    ),
    inversePrimary: Color(
      dynamicScheme.primaryPalette.get(40),
    ),
    onPrimary: Color(
      dynamicScheme.primaryPalette.get(20),
    ),
    primaryContainer: Color(
      dynamicScheme.primaryPalette.get(30),
    ),
    onPrimaryContainer: Color(
      dynamicScheme.primaryPalette.get(90),
    ),
    secondary: Color(
      dynamicScheme.secondaryPalette.get(80),
    ),
    onSecondary: Color(
      dynamicScheme.secondaryPalette.get(20),
    ),
    secondaryContainer: Color(
      dynamicScheme.secondaryPalette.get(30),
    ),
    onSecondaryContainer: Color(
      dynamicScheme.secondaryPalette.get(90),
    ),
    tertiary: Color(
      dynamicScheme.tertiaryPalette.get(80),
    ),
    onTertiary: Color(
      dynamicScheme.tertiaryPalette.get(20),
    ),
    tertiaryContainer: Color(
      dynamicScheme.tertiaryPalette.get(30),
    ),
    onTertiaryContainer: Color(
      dynamicScheme.tertiaryPalette.get(90),
    ),
    error: Color(
      dynamicScheme.errorPalette.get(80),
    ),
    onError: Color(
      dynamicScheme.errorPalette.get(20),
    ),
    errorContainer: Color(
      dynamicScheme.errorPalette.get(30),
    ),
    onErrorContainer: Color(
      dynamicScheme.errorPalette.get(90),
    ),
    scrim: Color(
      dynamicScheme.neutralPalette.get(0),
    ),
    shadow: Color(
      dynamicScheme.neutralPalette.get(0),
    ),
    surfaceDim: Color(
      dynamicScheme.neutralPalette.get(6),
    ),
    surface: Color(
      dynamicScheme.neutralPalette.get(6),
    ),
    surfaceBright: Color(
      dynamicScheme.neutralPalette.get(24),
    ),
    inverseSurface: Color(
      dynamicScheme.neutralPalette.get(90),
    ),
    onSurface: Color(
      dynamicScheme.neutralPalette.get(90),
    ),
    onInverseSurface: Color(
      dynamicScheme.neutralPalette.get(20),
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
    onSurfaceVariant: Color(
      dynamicScheme.neutralVariantPalette.get(90),
    ),
    outline: Color(
      dynamicScheme.neutralVariantPalette.get(60),
    ),
    outlineVariant: Color(
      dynamicScheme.neutralVariantPalette.get(30),
    ),
  );
  return createAriaTheme(colorScheme);
}

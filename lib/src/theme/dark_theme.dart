import 'package:aria/aria.dart';
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
      dynamicScheme.neutralPalette.get(14),
    ),
    surfaceBright: Color(
      dynamicScheme.neutralPalette.get(0),
    ),
    surfaceTint: Color(
      dynamicScheme.neutralPalette.get(0),
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
    // View color
    surfaceContainerLowest: Color(
      dynamicScheme.neutralPalette.get(12),
    ),
    // Header color
    surfaceContainerLow: Color(
      dynamicScheme.neutralPalette.get(18),
    ),
    surfaceContainer: Color(
      dynamicScheme.neutralPalette.get(20),
    ),
    // Secondary sidebar
    surfaceContainerHigh: Color(
      dynamicScheme.neutralPalette.get(16),
    ),
    // Sidebar
    surfaceContainerHighest: Color(
      dynamicScheme.neutralPalette.get(21),
    ),
    onSurfaceVariant: Color(
      dynamicScheme.neutralVariantPalette.get(98),
    ),
    outline: Color(
      dynamicScheme.neutralPalette.get(40),
    ),
    outlineVariant: Color(
      dynamicScheme.neutralVariantPalette.get(50),
    ),
  );
  return createAriaTheme(
    colorScheme,
    createTextTheme(colorScheme.onSurface),
  );
}

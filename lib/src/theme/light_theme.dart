import 'package:aria/aria.dart';
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
    // Arna background color
    surface: Color(
      dynamicScheme.neutralPalette.get(95),
    ),
    surfaceBright: Color(
      dynamicScheme.neutralPalette.get(100),
    ),
    surfaceTint: Color(
      dynamicScheme.neutralPalette.get(100),
    ),
    // Arna reverse background color
    inverseSurface: Color(
      dynamicScheme.neutralPalette.get(12),
    ),
    // Arna primary color
    onSurface: Color(
      dynamicScheme.neutralPalette.get(12),
    ),
    // Arna reverse primary color
    onInverseSurface: Color(
      dynamicScheme.neutralPalette.get(95),
    ),
    // Arna button/field color
    surfaceContainerLowest: Color(
      dynamicScheme.neutralPalette.get(100),
    ),
    // Arna header color
    surfaceContainerLow: Color(
      dynamicScheme.neutralPalette.get(97),
    ),
    // Arna card color
    surfaceContainer: Color(
      dynamicScheme.neutralPalette.get(98),
    ),

    surfaceContainerHigh: Color(
      dynamicScheme.neutralPalette.get(96),
    ),
    // Arna sidebar color
    surfaceContainerHighest: Color(
      dynamicScheme.neutralPalette.get(97),
    ),
    // Arna secondary color
    onSurfaceVariant: Color(
      dynamicScheme.neutralPalette.get(43),
    ),
    // Arna border color
    outline: Color(
      dynamicScheme.neutralVariantPalette.get(82),
    ),
    // Arna disabled text color
    outlineVariant: Color(
      dynamicScheme.neutralPalette.get(60),
    ),
  );
  return createAriaTheme(
    colorScheme,
    createTextTheme(colorScheme.onSurface),
  );
}

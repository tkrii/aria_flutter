import 'package:aria/aria.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/dynamiccolor/dynamic_scheme.dart';

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
    // Arna background color
    surface: Color(
      dynamicScheme.neutralPalette.get(12),
    ),
    surfaceBright: Color(
      dynamicScheme.neutralPalette.get(0),
    ),
    surfaceTint: Color(
      dynamicScheme.neutralPalette.get(0),
    ),
    // Arna reverse background color
    inverseSurface: Color(
      dynamicScheme.neutralPalette.get(95),
    ),
    // Arna primary color
    onSurface: Color(
      dynamicScheme.neutralPalette.get(95),
    ),
    // Arna reverse primary color
    onInverseSurface: Color(
      dynamicScheme.neutralPalette.get(12),
    ),
    // Arna button/field color
    surfaceContainerLowest: Color(
      dynamicScheme.neutralPalette.get(22),
    ),
    // Arna header color
    surfaceContainerLow: Color(
      dynamicScheme.neutralPalette.get(14),
    ),
    // Arna card color
    surfaceContainer: Color(
      dynamicScheme.neutralPalette.get(18),
    ),
    // (Container + Highest) / 2
    surfaceContainerHigh: Color(
      dynamicScheme.neutralPalette.get(15),
    ),
    // Arna sidebar color
    surfaceContainerHighest: Color(
      dynamicScheme.neutralPalette.get(17),
    ),
    // Arna secondary color
    onSurfaceVariant: Color(
      dynamicScheme.neutralPalette.get(57),
    ),
    // Arna border color
    outline: Color(
      dynamicScheme.neutralVariantPalette.get(2),
    ),
    // Arna disabled text color
    outlineVariant: Color(
      dynamicScheme.neutralPalette.get(42),
    ),
  );
  return createAriaTheme(
    colorScheme,
    createTextTheme(colorScheme.onSurface),
  );
}

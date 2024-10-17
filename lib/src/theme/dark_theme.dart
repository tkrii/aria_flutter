import 'package:aria/aria.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/dynamiccolor/dynamic_scheme.dart';

ThemeData darkTheme({
  required DynamicScheme dynamicScheme,
}) {
  final colorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(
      dynamicScheme.primaryPalette.get(80),
    ),
    inversePrimary: Color(
      dynamicScheme.primaryPalette.get(42),
    ),
    onPrimary: Color(
      dynamicScheme.primaryPalette.get(20),
    ),
    primaryContainer: Color(
      dynamicScheme.primaryPalette.get(35),
    ),
    onPrimaryContainer: Color(
      dynamicScheme.primaryPalette.get(85),
    ),
    secondary: Color(
      dynamicScheme.secondaryPalette.get(80),
    ),
    onSecondary: Color(
      dynamicScheme.secondaryPalette.get(20),
    ),
    secondaryContainer: Color(
      dynamicScheme.secondaryPalette.get(35),
    ),
    onSecondaryContainer: Color(
      dynamicScheme.secondaryPalette.get(85),
    ),
    tertiary: Color(
      dynamicScheme.tertiaryPalette.get(80),
    ),
    onTertiary: Color(
      dynamicScheme.tertiaryPalette.get(20),
    ),
    tertiaryContainer: Color(
      dynamicScheme.tertiaryPalette.get(35),
    ),
    onTertiaryContainer: Color(
      dynamicScheme.tertiaryPalette.get(85),
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
    //Adwaita secondary sidebar
    surfaceDim: Color(
      dynamicScheme.neutralPalette.get(17),
    ),
    // Adwaita background color
    surface: Color(
      dynamicScheme.neutralPalette.get(5),
    ),
    // Adwaita sidebar color
    surfaceBright: Color(
      dynamicScheme.neutralPalette.get(20),
    ),
    surfaceTint: Color(
      dynamicScheme.neutralPalette.get(0),
    ),
    inverseSurface: Color(
      dynamicScheme.neutralVariantPalette.get(85),
    ),
    // Primary color
    onSurface: Color(
      dynamicScheme.neutralPalette.get(95),
    ),
    onInverseSurface: Color(
      dynamicScheme.neutralVariantPalette.get(24),
    ),
    // Adwaita View
    surfaceContainerLowest: Color(
      dynamicScheme.neutralPalette.get(11),
    ),
    // Material color role Card
    // Adwaita card
    surfaceContainerLow: Color(
      dynamicScheme.neutralPalette.get(100),
    ).withOpacity(0.08),
    // Material color role NavigationBar
    // Adwaita header
    surfaceContainer: Color(
      dynamicScheme.neutralPalette.get(14),
    ),
    // Material color role Dialog
    // Adwaita dialog
    surfaceContainerHigh: Color(
      dynamicScheme.neutralPalette.get(24),
    ),
    // Material color role Input
    // Adwaita secondary sidebar
    surfaceContainerHighest: Color(
      dynamicScheme.neutralPalette.get(17),
    ),
    onSurfaceVariant: Color(
      dynamicScheme.neutralVariantPalette.get(85),
    ),
    outline: Color(
      dynamicScheme.neutralVariantPalette.get(95),
    ).withOpacity(1 / 3),
    outlineVariant: Color(
      dynamicScheme.neutralPalette.get(95),
    ).withOpacity(2 / 3),
  );
  return createAriaTheme(
    colorScheme,
    createTextTheme(colorScheme.onSurface),
  );
}

import 'package:aria/aria.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/dynamiccolor/dynamic_scheme.dart';

ThemeData lightTheme({
  required DynamicScheme dynamicScheme,
}) {
  final colorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(
      dynamicScheme.primaryPalette.get(42),
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
      dynamicScheme.secondaryPalette.get(42),
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
      dynamicScheme.tertiaryPalette.get(42),
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
      dynamicScheme.errorPalette.get(42),
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
    // Adwaita secondary sidebar
    surfaceDim: Color(
      dynamicScheme.neutralPalette.get(96),
    ),
    // Adwaita background color
    surface: Color(
      dynamicScheme.neutralPalette.get(98),
    ),
    // Adwaita sidebar color
    surfaceBright: Color(
      dynamicScheme.neutralPalette.get(93),
    ),
    surfaceTint: Color(
      dynamicScheme.neutralPalette.get(100),
    ),
    // Arna reverse background color
    inverseSurface: Color(
      dynamicScheme.neutralVariantPalette.get(12),
    ),
    // Arna primary color
    onSurface: Color(
      dynamicScheme.neutralPalette.get(12),
    ),
    // Arna reverse primary color
    onInverseSurface: Color(
      dynamicScheme.neutralVariantPalette.get(95),
    ),
    // Adwaita view
    surfaceContainerLowest: Color(
      dynamicScheme.neutralPalette.get(100),
    ),

    // Material color role Card
    // Adwaita card
    surfaceContainerLow: Color(
      dynamicScheme.neutralPalette.get(100),
    ),
    // Material color role NavigationBar
    // Adwaita header
    surfaceContainer: Color(
      dynamicScheme.neutralPalette.get(100),
    ),
    // Material color role Dialog
    // Adwaita dialog
    surfaceContainerHigh: Color(
      dynamicScheme.neutralPalette.get(98),
    ),
    // Material color role Input
    // Adwaita secondary sidebar
    surfaceContainerHighest: Color(
      dynamicScheme.neutralPalette.get(96),
    ),
    // Arna secondary color
    onSurfaceVariant: Color(
      dynamicScheme.neutralVariantPalette.get(43),
    ),
    // Arna border color
    outline: Color(
      dynamicScheme.neutralVariantPalette.get(12),
    ).withOpacity(0.45),
    outlineVariant: Color(
      dynamicScheme.neutralPalette.get(12),
    ).withOpacity(0.7),
  );
  return createAriaTheme(
    colorScheme,
    createTextTheme(colorScheme.onSurface),
  );
}

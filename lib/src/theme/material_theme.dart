import 'package:aria/src/extensions/brightness.dart';
import 'package:aria/src/extensions/color.dart';
import 'package:aria/src/theme/scheme_theme.dart';
import 'package:flutter/material.dart' show Color, ColorScheme, ThemeData;
import 'package:material_color_utilities/dynamiccolor/dynamic_scheme.dart';

/// Generate [ThemeData] from [dynamicScheme] using MaterialDynamicColors
ThemeData materialTheme({
  required DynamicScheme dynamicScheme,
}) {
  final colorScheme = ColorScheme(
    brightness: (!dynamicScheme.isDark).toBrightness,
    primaryFixed: Color(dynamicScheme.primaryFixed),
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
    surfaceDim: Color(dynamicScheme.surfaceDim),
    surface: Color(dynamicScheme.surface),
    surfaceBright: Color(dynamicScheme.surfaceBright),
    surfaceContainerLowest: Color(dynamicScheme.surfaceContainerLowest),
    surfaceContainerLow: Color(dynamicScheme.surfaceContainerLow),
    surfaceContainer: Color(dynamicScheme.surfaceContainer),
    surfaceContainerHigh: Color(dynamicScheme.surfaceContainerHigh),
    surfaceContainerHighest: Color(dynamicScheme.surfaceContainerHighest),
    onSurface: Color(dynamicScheme.onSurface),
    onSurfaceVariant: Color(dynamicScheme.onSurfaceVariant),
    outline: Color(dynamicScheme.outline),
    outlineVariant: Color(dynamicScheme.outlineVariant),
    inverseSurface: Color(dynamicScheme.inverseSurface),
    onInverseSurface: Color(dynamicScheme.inverseSurface).foregroundColor,
    inversePrimary: Color(dynamicScheme.inversePrimary),
    scrim: Color(dynamicScheme.scrim),
    shadow: Color(dynamicScheme.shadow),
  );
  return createAriaTheme(
    colorScheme,
  );
}

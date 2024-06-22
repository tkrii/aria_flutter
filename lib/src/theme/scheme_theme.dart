import 'package:aria/aria.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ThemeData createAriaTheme(ColorScheme colorScheme) => ThemeData(
      colorScheme: colorScheme,
      useMaterial3: true,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: colorScheme.surface,
      disabledColor: colorScheme.disabled,
      cupertinoOverrideTheme: CupertinoThemeData(
        primaryColor: colorScheme.primary,
        primaryContrastingColor: colorScheme.tertiary,
        barBackgroundColor: colorScheme.surfaceContainerHigh,
        scaffoldBackgroundColor: colorScheme.surface,
        applyThemeToAll: true,
      ),
      textTheme: createTextTheme(colorScheme.onSurface),
    );

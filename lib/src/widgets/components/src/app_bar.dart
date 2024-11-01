import 'package:aria/src/extensions/src/brightness.dart';
import 'package:aria/src/extensions/src/color_scheme.dart';
import 'package:aria/src/theme/src/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

AppBarTheme appBarTheme(ColorScheme colorScheme) => AppBarTheme(
      foregroundColor: colorScheme.onSurface,
      color: colorScheme.surface,
      elevation: 0,
      scrolledUnderElevation: 0,
      systemOverlayStyle: (colorScheme.isLight
              ? SystemUiOverlayStyle.light
              : SystemUiOverlayStyle.dark)
          .copyWith(
        statusBarIconBrightness: colorScheme.brightness.inverse,
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: colorScheme.surfaceContainer,
        systemNavigationBarIconBrightness: colorScheme.brightness.inverse,
      ),
      titleTextStyle: createTextTheme(colorScheme.onSurface).titleLarge,
    );

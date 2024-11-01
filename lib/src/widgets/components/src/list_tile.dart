import 'package:aria/src/extensions/src/color_scheme.dart';
import 'package:aria/src/theme.dart';
import 'package:aria/src/widgets/utils.dart';
import 'package:flutter/material.dart';

ListTileThemeData listTileThemeData(ColorScheme colorScheme) {
  return ListTileThemeData(
    selectedTileColor: colorScheme.secondaryContainer,
    selectedColor: colorScheme.onSecondaryContainer,
    iconColor: colorScheme.onSurfaceSecondary,
    titleTextStyle: createTextTheme(colorScheme.onSurface).bodyLarge,
    subtitleTextStyle:
        createTextTheme(colorScheme.onSurfaceSecondary).bodyMedium,
    shape: RoundedRectangleBorder(
      borderRadius: Utils.mediumBorderRadius,
    ),
  );
}

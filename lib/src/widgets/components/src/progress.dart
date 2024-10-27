import 'package:aria/src/extensions/extensions.dart';
import 'package:flutter/material.dart';

ProgressIndicatorThemeData progressIndicatorThemeData(
  ColorScheme colorScheme,
) {
  return ProgressIndicatorThemeData(
    color: colorScheme.primary.matchingColor(colorScheme.brightness),
    linearTrackColor: Color.lerp(
      colorScheme.surfaceContainerLowest,
      colorScheme.primaryContainer,
      0.5,
    )!
        .applyOverlay,
    circularTrackColor: Color.lerp(
      colorScheme.surfaceContainerLowest,
      colorScheme.primaryContainer,
      0.5,
    )!
        .applyOverlay,
    refreshBackgroundColor: colorScheme.surfaceContainerHigh,
  );
}

import 'package:aria/aria.dart';
import 'package:aria/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

SegmentedButtonThemeData segmentedButtonThemeData(ColorScheme colorScheme) =>
    SegmentedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateColor.resolveWith(
          (state) => state.contains(WidgetState.disabled)
              ? colorScheme.disabled
              : state.contains(WidgetState.selected)
                  ? colorScheme.primary
                  : colorScheme.surfaceContainerLowest,
        ),
        foregroundColor: WidgetStateColor.resolveWith(
          (state) => state.contains(WidgetState.disabled)
              ? colorScheme.disabled
              : state.contains(WidgetState.selected)
                  ? colorScheme.onPrimary
                  : colorScheme.onSurface,
        ),
      ).merge(commonButton),
      selectedIcon: const Icon(Icons.check_rounded),
    );

ToggleButtonsThemeData toggleButtonsThemeData(ColorScheme colorScheme) =>
    ToggleButtonsThemeData(
      color: colorScheme.surfaceContainerLowest,
      selectedColor: colorScheme.onPrimary,
      disabledColor: colorScheme.disabled,
      fillColor: colorScheme.primary,
      selectedBorderColor: colorScheme.primary.outerColor,
      borderRadius: BorderRadius.circular(12),
    );
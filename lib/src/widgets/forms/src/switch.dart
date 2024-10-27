import 'package:aria/src/extensions/src/color_scheme.dart';
import 'package:flutter/material.dart';

SwitchThemeData switchThemeData(ColorScheme colorScheme) => SwitchThemeData(
      thumbColor: WidgetStateColor.resolveWith(
        (state) => state.contains(WidgetState.disabled)
            ? colorScheme.disabled
            : state.contains(WidgetState.selected)
                ? colorScheme.success.onColorContainer
                : colorScheme.success.color,
      ),
      trackOutlineWidth: WidgetStateProperty.resolveWith(
        (state) => state.contains(WidgetState.selected) &&
                !state.contains(WidgetState.disabled)
            ? 0
            : 2,
      ),
      trackOutlineColor: WidgetStateColor.resolveWith(
        (state) => state.contains(WidgetState.disabled)
            ? colorScheme.disabled
            : state.contains(WidgetState.selected)
                ? colorScheme.success.onColorContainer
                : colorScheme.success.color,
      ),
      trackColor: WidgetStateColor.resolveWith(
        (state) => state.contains(WidgetState.selected) &&
                !state.contains(WidgetState.disabled)
            ? colorScheme.success.colorContainer
            : Colors.transparent,
      ),
    );

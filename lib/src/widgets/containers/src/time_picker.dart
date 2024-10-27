import 'package:aria/src/extensions/extensions.dart';
import 'package:aria/src/widgets/utils.dart';
import 'package:aria/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

TimePickerThemeData timePickerThemeData(ColorScheme colorScheme) =>
    TimePickerThemeData(
      cancelButtonStyle: cancelButtonStyle(colorScheme),
      confirmButtonStyle: confirmButtonStyle(colorScheme),
      inputDecorationTheme: inputDecorationTheme(colorScheme).copyWith(
        contentPadding: const EdgeInsets.all(2),
      ),
      backgroundColor: colorScheme.surfaceContainerHigh,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: Utils.largeBorderRadius,
        side: Utils.borderSideOnlyDark(
          colorScheme.disabled.scale(alpha: -0.5),
          colorScheme.brightness,
        ),
      ),
      dialBackgroundColor: colorScheme.surfaceContainer,
      hourMinuteColor: WidgetStateColor.resolveWith(
        (state) => !state.contains(WidgetState.selected)
            ? colorScheme.surfaceContainerHighest
            : colorScheme.primaryContainer,
      ),
      hourMinuteTextColor: WidgetStateColor.resolveWith(
        (state) => !state.contains(WidgetState.selected)
            ? colorScheme.onSurfaceVariant
            : colorScheme.onPrimaryContainer,
      ),
      dayPeriodColor: WidgetStateColor.resolveWith(
        (state) => !state.contains(WidgetState.selected)
            ? colorScheme.surfaceContainerHighest
            : colorScheme.tertiary,
      ),
      dayPeriodTextColor: WidgetStateColor.resolveWith(
        (state) => !state.contains(WidgetState.selected)
            ? colorScheme.onSurfaceVariant
            : colorScheme.onTertiaryContainer,
      ),
      dayPeriodShape: RoundedRectangleBorder(
        borderRadius: Utils.largeBorderRadius,
        side: Utils.borderSide(colorScheme.outline),
      ),
      hourMinuteShape: RoundedRectangleBorder(
        borderRadius: Utils.largeBorderRadius,
        side: Utils.borderSide(colorScheme.outline),
      ),
    );

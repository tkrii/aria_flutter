import 'package:aria/src/extensions/extensions.dart';
import 'package:aria/src/widgets/forms/src/buttons.dart';
import 'package:aria/src/widgets/utils.dart';
import 'package:flutter/material.dart';

DatePickerThemeData datePickerThemeData(ColorScheme colorScheme) =>
    DatePickerThemeData(
      backgroundColor: colorScheme.surfaceContainerHigh,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: Utils.largeBorderRadius,
        side: Utils.borderSideOnlyDark(
          colorScheme.disabled.scale(alpha: -0.5),
          colorScheme.brightness,
        ),
      ),
      headerBackgroundColor: colorScheme.surfaceContainer,
      headerForegroundColor: colorScheme.onSurface,
      cancelButtonStyle: cancelButtonStyle(colorScheme),
      confirmButtonStyle: confirmButtonStyle(colorScheme),
    );

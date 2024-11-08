part of '../../theme/create_theme.dart';

DatePickerThemeData datePickerThemeData(ColorScheme colorScheme) =>
    DatePickerThemeData(
      backgroundColor: colorScheme.surfaceContainerHigh,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: Utils.largeBorderRadius,
        side: Utils.borderSideOnlyDark(
          colorScheme.disabled,
          colorScheme.brightness,
        ),
      ),
      cancelButtonStyle: cancelButtonStyle(colorScheme),
      confirmButtonStyle: confirmButtonStyle(colorScheme),
      headerBackgroundColor: colorScheme.surfaceContainer,
      headerForegroundColor: colorScheme.onSurface,
    );

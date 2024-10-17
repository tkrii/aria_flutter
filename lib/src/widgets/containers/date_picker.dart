part of '../../theme/scheme_theme.dart';

DatePickerThemeData _datePickerThemeData(ColorScheme colorScheme) =>
    DatePickerThemeData(
      backgroundColor: colorScheme.surfaceContainerHigh,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26),
        side: BorderSide(
          color: colorScheme.outline,
        ),
      ),
      headerBackgroundColor: colorScheme.surfaceContainer,
      headerForegroundColor: colorScheme.onSurface,
      cancelButtonStyle: _cancelButtonStyle(colorScheme),
      confirmButtonStyle: _confirmButtonStyle(colorScheme),
    );

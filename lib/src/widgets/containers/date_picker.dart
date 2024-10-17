part of '../../theme/scheme_theme.dart';

DatePickerThemeData _datePickerThemeData(ColorScheme colorScheme) =>
    DatePickerThemeData(
      backgroundColor: colorScheme.surfaceContainerHigh,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26),
        side: colorScheme.isDark
            ? BorderSide(
                color: colorScheme.outline,
              )
            : BorderSide.none,
      ),
      headerBackgroundColor: colorScheme.surfaceContainer,
      headerForegroundColor: colorScheme.onSurfaceVariant,
      cancelButtonStyle: _cancelButtonStyle(colorScheme),
      confirmButtonStyle: _confirmButtonStyle(colorScheme),
    );

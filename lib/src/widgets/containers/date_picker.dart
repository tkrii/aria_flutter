part of '../../theme/scheme_theme.dart';

DatePickerThemeData _datePickerThemeData(ColorScheme colorScheme) =>
    DatePickerThemeData(
      backgroundColor: colorScheme.surfaceContainer,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26),
        side: BorderSide(
          color: colorScheme.isLight ? Colors.transparent : colorScheme.outline,
        ),
      ),
      headerBackgroundColor: colorScheme.surfaceContainerLow,
      headerForegroundColor: colorScheme.onSurfaceVariant,
      cancelButtonStyle: _cancelButtonStyle(colorScheme),
      confirmButtonStyle: _confirmButtonStyle(colorScheme),
    );

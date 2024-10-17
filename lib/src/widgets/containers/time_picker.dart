part of '../../theme/scheme_theme.dart';

TimePickerThemeData _timePickerThemeData(ColorScheme colorScheme) =>
    TimePickerThemeData(
      cancelButtonStyle: _cancelButtonStyle(colorScheme),
      confirmButtonStyle: _confirmButtonStyle(colorScheme),
      inputDecorationTheme: _inputDecorationTheme(colorScheme).copyWith(
        contentPadding: const EdgeInsets.all(2),
      ),
      backgroundColor: colorScheme.surfaceContainerHigh,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26),
        side: BorderSide(
          color: colorScheme.outline,
        ),
      ),
      dialBackgroundColor: colorScheme.surfaceContainerHighest,
      hourMinuteColor: WidgetStateColor.resolveWith(
        (state) => !state.contains(WidgetState.selected)
            ? colorScheme.surfaceContainerLowest
            : colorScheme.primaryContainer,
      ),
      hourMinuteTextColor: WidgetStateColor.resolveWith(
        (state) => !state.contains(WidgetState.selected)
            ? colorScheme.onSurfaceVariant
            : colorScheme.onPrimaryContainer,
      ),
      dayPeriodColor: WidgetStateColor.resolveWith(
        (state) => !state.contains(WidgetState.selected)
            ? colorScheme.surfaceContainerLowest
            : colorScheme.tertiary,
      ),
      dayPeriodTextColor: WidgetStateColor.resolveWith(
        (state) => !state.contains(WidgetState.selected)
            ? colorScheme.onSurfaceVariant
            : colorScheme.onTertiaryContainer,
      ),
      dayPeriodShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: colorScheme.outlineVariant,
        ),
      ),
      hourMinuteShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: colorScheme.outlineVariant,
        ),
      ),
    );

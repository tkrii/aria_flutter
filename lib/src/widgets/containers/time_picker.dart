part of '../../theme/create_theme.dart';

TimePickerThemeData timePickerThemeData(ColorScheme colorScheme) =>
    TimePickerThemeData(
      backgroundColor: colorScheme.surfaceContainerHigh,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Utils.thumbnailLargeBorder,
        ),
        side: Utils.borderSideOnlyDark(
          colorScheme.outlineVariant,
          colorScheme.brightness,
        ),
      ),
      cancelButtonStyle: cancelButtonStyle(colorScheme),
      confirmButtonStyle: confirmButtonStyle(colorScheme),
      inputDecorationTheme: inputDecorationTheme(colorScheme).copyWith(
        contentPadding: const EdgeInsets.all(2),
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
        borderRadius: BorderRadius.circular(
          Utils.thumbnailMediumBorder,
        ),
        side: Utils.borderSide(colorScheme.outline),
      ),
      hourMinuteShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Utils.thumbnailMediumBorder,
        ),
        side: Utils.borderSide(colorScheme.outline),
      ),
    );

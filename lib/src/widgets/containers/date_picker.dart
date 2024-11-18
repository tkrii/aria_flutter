part of '../../theme/create_theme.dart';

DatePickerThemeData datePickerThemeData(ColorScheme colorScheme) =>
    DatePickerThemeData(
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
      headerBackgroundColor: colorScheme.surfaceContainer,
      headerForegroundColor: colorScheme.onSurface,
    );

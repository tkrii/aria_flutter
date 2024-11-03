part of '../../theme/scheme_theme.dart';

InputDecorationTheme inputDecorationTheme(ColorScheme colorScheme) {
  return InputDecorationTheme(
    filled: true,
    fillColor: colorScheme.surfaceContainerHighest,
    iconColor: colorScheme.onSurfaceSecondary,
    enabledBorder: OutlineInputBorder(
      borderSide: Utils.borderSide(colorScheme.outline),
      borderRadius: Utils.borderRadius,
    ),
    errorBorder: OutlineInputBorder(
      borderSide: Utils.borderSide(colorScheme.error),
      borderRadius: Utils.borderRadius,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: Utils.borderSide(colorScheme.primary, 2.125),
      borderRadius: Utils.borderRadius,
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: Utils.borderSide(colorScheme.disabled),
      borderRadius: Utils.borderRadius,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: Utils.borderSide(colorScheme.error, 2.125),
      borderRadius: Utils.borderRadius,
    ),
  );
}

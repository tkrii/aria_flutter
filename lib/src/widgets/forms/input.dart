part of '../../theme/scheme_theme.dart';

InputDecorationTheme _inputDecorationTheme(ColorScheme colorScheme) {
  return InputDecorationTheme(
    filled: true,
    fillColor: colorScheme.surfaceContainerLowest,
    iconColor: colorScheme.onSurfaceSecondary,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: colorScheme.outline,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: colorScheme.error,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: colorScheme.primary,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.lerp(
          colorScheme.disabled,
          colorScheme.surfaceContainerLowest,
          0.5,
        )!,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: colorScheme.error,
        width: 2,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
  );
}

part of '../../theme/create_theme.dart';

InputDecorationTheme inputDecorationTheme(ColorScheme colorScheme) {
  return InputDecorationTheme(
    filled: true,
    fillColor: colorScheme.surfaceContainerHighest,
    iconColor: colorScheme.onSurfaceVariant,
    prefixIconColor: colorScheme.onSurfaceVariant,
    suffixIconColor: colorScheme.onSurfaceVariant,
    border: OutlineInputBorder(
      borderSide: Utils.borderSide(colorScheme.outline),
      borderRadius: BorderRadius.circular(
        Utils.thumbnailMediumBorder,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: Utils.borderSide(colorScheme.outline),
      borderRadius: BorderRadius.circular(
        Utils.thumbnailMediumBorder,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: Utils.borderSide(colorScheme.error),
      borderRadius: BorderRadius.circular(
        Utils.thumbnailMediumBorder,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: Utils.borderSide(colorScheme.primary, 2.125),
      borderRadius: BorderRadius.circular(
        Utils.thumbnailMediumBorder,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: Utils.borderSide(colorScheme.outlineVariant),
      borderRadius: BorderRadius.circular(
        Utils.thumbnailMediumBorder,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide: Utils.borderSide(colorScheme.error, 2.125),
      borderRadius: BorderRadius.circular(
        Utils.thumbnailMediumBorder,
      ),
    ),
  );
}

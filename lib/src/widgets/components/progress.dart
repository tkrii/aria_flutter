part of '../../theme/create_theme.dart';

ProgressIndicatorThemeData progressIndicatorThemeData(
  ColorScheme colorScheme,
) {
  return ProgressIndicatorThemeData(
    color: colorScheme.primary,
    circularTrackColor: colorScheme.outlineVariant,
    linearTrackColor: colorScheme.outlineVariant,
    refreshBackgroundColor: colorScheme.surfaceContainerHigh,
  );
}

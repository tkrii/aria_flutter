part of '../../theme/scheme_theme.dart';

ProgressIndicatorThemeData _progressIndicatorThemeData(
  ColorScheme colorScheme,
) {
  return ProgressIndicatorThemeData(
    color: colorScheme.primary,
    linearTrackColor: Color.lerp(
      colorScheme.disabled,
      colorScheme.primaryContainer,
      3 / 4,
    ),
    circularTrackColor: Color.lerp(
      colorScheme.disabled,
      colorScheme.primaryContainer,
      3 / 4,
    ),
    refreshBackgroundColor: colorScheme.surfaceContainerHigh,
  );
}

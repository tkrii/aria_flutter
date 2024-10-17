part of '../../theme/scheme_theme.dart';

ProgressIndicatorThemeData _progressIndicatorThemeData(
  ColorScheme colorScheme,
) {
  return ProgressIndicatorThemeData(
    color: colorScheme.primaryFixedDim,
    linearTrackColor: colorScheme.outline,
    circularTrackColor: colorScheme.outline,
    refreshBackgroundColor: colorScheme.surfaceContainerHigh,
  );
}

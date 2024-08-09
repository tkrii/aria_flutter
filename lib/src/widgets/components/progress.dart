part of '../../theme/scheme_theme.dart';

ProgressIndicatorThemeData _progressIndicatorThemeData(
    ColorScheme colorScheme) {
  Color background = colorScheme.surfaceContainer.mix(
    colorScheme.secondary,
    20,
  );
  return ProgressIndicatorThemeData(
    color: colorScheme.primary,
    linearTrackColor: background,
    circularTrackColor: background,
    refreshBackgroundColor: colorScheme.surfaceContainer,
  );
}

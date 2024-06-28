part of '../../theme/scheme_theme.dart';

ProgressIndicatorThemeData _progressIndicatorThemeData(
    ColorScheme colorScheme) {
  Color background = colorScheme.surface.mix(
    colorScheme.secondary,
    25,
  );
  return ProgressIndicatorThemeData(
    color: colorScheme.primary,
    linearTrackColor: background,
    circularTrackColor: background,
    refreshBackgroundColor: colorScheme.surfaceContainer,
  );
}

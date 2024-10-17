part of '../../theme/scheme_theme.dart';

ProgressIndicatorThemeData _progressIndicatorThemeData(
  ColorScheme colorScheme,
) {
  final background = Color.lerp(
    colorScheme.surfaceContainer,
    colorScheme.secondary,
    0.2,
  )!;
  return ProgressIndicatorThemeData(
    color: colorScheme.primary,
    linearTrackColor: background,
    circularTrackColor: background,
    refreshBackgroundColor: colorScheme.surfaceContainer,
  );
}

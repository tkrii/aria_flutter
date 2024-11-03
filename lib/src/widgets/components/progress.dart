part of '../../theme/scheme_theme.dart';

ProgressIndicatorThemeData progressIndicatorThemeData(
  ColorScheme colorScheme,
) {
  return ProgressIndicatorThemeData(
    color: colorScheme.primaryFixed,
    linearTrackColor: Color.lerp(
      colorScheme.primaryContainer,
      colorScheme.outlineVariant,
      0.5,
    )!
        .applyOverlay,
    circularTrackColor: Color.lerp(
      colorScheme.primaryContainer,
      colorScheme.outlineVariant,
      0.5,
    )!
        .applyOverlay,
    refreshBackgroundColor: colorScheme.surfaceContainerHigh,
  );
}

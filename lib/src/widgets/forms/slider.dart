part of '../../theme/scheme_theme.dart';

SliderThemeData _sliderThemeData(
  ColorScheme colorScheme,
) {
  return SliderThemeData(
    activeTrackColor: colorScheme.primary,
    inactiveTrackColor: colorScheme.surfaceContainer.mix(
      colorScheme.secondary,
      20,
    ),
    trackHeight: 3,
    thumbColor: Colors.white.mix(colorScheme.primary),
    disabledThumbColor: colorScheme.inverseSurface.mix(
      colorScheme.surface,
      70,
    ),
  );
}

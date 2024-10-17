part of '../../theme/scheme_theme.dart';

SliderThemeData _sliderThemeData(
  ColorScheme colorScheme,
) {
  return SliderThemeData(
    activeTrackColor: colorScheme.primary,
    inactiveTrackColor: Color.lerp(
      colorScheme.surfaceContainer,
      colorScheme.secondary,
      0.2,
    ),
    trackHeight: 3,
    thumbColor: Color.lerp(
      Colors.white,
      colorScheme.primary,
      0.5,
    ),
    disabledThumbColor: Color.lerp(
      colorScheme.inverseSurface,
      colorScheme.surface,
      0.7,
    ),
  );
}

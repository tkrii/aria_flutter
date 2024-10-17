part of '../../theme/scheme_theme.dart';

SliderThemeData _sliderThemeData(
  ColorScheme colorScheme,
) {
  return SliderThemeData(
    activeTrackColor: colorScheme.secondary,
    inactiveTrackColor: Color.lerp(
      colorScheme.disabled,
      colorScheme.primaryContainer,
      3 / 4,
    ),
    trackHeight: 3,
    thumbColor: colorScheme.primary.scale(
      lightness: colorScheme.isLight ? 0.2 : -0.2,
    ),
    disabledThumbColor: colorScheme.surfaceBright.scale(
      lightness: colorScheme.isLight ? -0.2 : 0.2,
    ),
  );
}

part of '../../theme/scheme_theme.dart';

SliderThemeData _sliderThemeData(
  ColorScheme colorScheme,
) {
  return SliderThemeData(
    activeTrackColor: colorScheme.inverseSurface,
    inactiveTrackColor: colorScheme.outline,
    trackHeight: 3,
    thumbColor: colorScheme.inversePrimary,
    disabledThumbColor: colorScheme.surfaceContainer,
  );
}

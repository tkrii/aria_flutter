part of '../../theme/scheme_theme.dart';

SliderThemeData _sliderThemeData(
  ColorScheme colorScheme,
) {
  return SliderThemeData(
    activeTrackColor: colorScheme.primary,
    inactiveTrackColor: colorScheme.surface.mix(
      colorScheme.secondary,
      25,
    ),
    trackHeight: 3,
    
    thumbColor: Colors.white,
    disabledThumbColor: colorScheme.inverseSurface.mix(
      colorScheme.surface,
      10,
    ),
  );
}

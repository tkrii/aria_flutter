part of '../../theme/create_theme.dart';

SliderThemeData sliderThemeData(
  ColorScheme colorScheme,
) {
  return SliderThemeData(
    activeTrackColor: colorScheme.primary,
    inactiveTrackColor: colorScheme.outlineVariant,
    trackHeight: 5,
    thumbColor: Colors.white,
  );
}

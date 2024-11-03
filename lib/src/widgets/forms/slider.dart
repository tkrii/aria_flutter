part of '../../theme/scheme_theme.dart';

SliderThemeData sliderThemeData(
  ColorScheme colorScheme,
) {
  return SliderThemeData(
    activeTrackColor: colorScheme.primaryFixed,
    inactiveTrackColor: colorScheme.outline,
    trackHeight: 3,
    thumbColor: Colors.white,
  );
}

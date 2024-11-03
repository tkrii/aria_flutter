part of '../../theme/scheme_theme.dart';

SliderThemeData sliderThemeData(
  ColorScheme colorScheme,
) {
  return SliderThemeData(
    activeTrackColor: colorScheme.primaryFixed,
    inactiveTrackColor: Color.lerp(
      colorScheme.primaryContainer,
      colorScheme.outlineVariant,
      0.5,
    )!
        .applyOverlay,
    trackHeight: 5,
    thumbColor: Colors.white,
  );
}

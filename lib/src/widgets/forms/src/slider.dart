import 'package:aria/src/extensions/extensions.dart';
import 'package:flutter/material.dart';

SliderThemeData sliderThemeData(
  ColorScheme colorScheme,
) {
  return SliderThemeData(
    activeTrackColor: colorScheme.primary,
    inactiveTrackColor: colorScheme.disabled,
    trackHeight: 3,
    thumbColor: Colors.white,
  );
}
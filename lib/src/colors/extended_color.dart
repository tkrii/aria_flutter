import 'package:aria/aria.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class ExtendedColor {
  final Color value;

  ExtendedColor({required this.value});

  Hct get _hct => Hct.fromInt(value.value);

  TonalPalette get _palette => TonalPalette.of(_hct.hue, _hct.chroma);

  ColorFamily get light => ColorFamily(
        color: Color(_palette.get(40)),
        onColor: Color(_palette.get(100)),
        colorContainer: Color(_palette.get(90)),
        onColorContainer: Color(_palette.get(100)),
      );

  ColorFamily get dark => ColorFamily(
        color: Color(_palette.get(80)),
        onColor: Color(_palette.get(20)),
        colorContainer: Color(_palette.get(30)),
        onColorContainer: Color(_palette.get(20)),
      );

  ColorFamily from(Brightness brightness) => brightness.isLight ? light : dark;

  ColorFamily of(BuildContext context) => from(Theme.of(context).brightness);
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}

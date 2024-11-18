import 'package:aria/src/extensions/brightness.dart';
import 'package:aria/src/extensions/color.dart';
import 'package:flutter/material.dart'
    show Brightness, BuildContext, Color, ColorScheme, Theme;
import 'package:material_color_utilities/hct/hct.dart';
import 'package:material_color_utilities/palettes/tonal_palette.dart';

/// Get [ColorFamily] for use in [light] or [dark] theme
class ExtendedColor {
  final Color color;

  Hct get _hct => Hct.fromInt(color.value);

  TonalPalette get _palette => TonalPalette.of(_hct.hue, _hct.chroma);

  const ExtendedColor({required this.color});

  ColorFamily light() => ColorFamily(
        color: Color(
          _palette.get(40),
        ),
        onColor: Color(
          _palette.get(40),
        ).foregroundColor,
        colorContainer: Color(
          _palette.get(90),
        ),
        onColorContainer: Color(
          _palette.get(90),
        ).foregroundColor,
      );

  ColorFamily dark() => ColorFamily(
        color: Color(
          _palette.get(80),
        ),
        onColor: Color(
          _palette.get(80),
        ).foregroundColor,
        colorContainer: Color(
          _palette.get(30),
        ),
        onColorContainer: Color(
          _palette.get(30),
        ).foregroundColor,
      );

  /// Get [light] or [dark] from [brightness] value
  ColorFamily from(Brightness brightness) =>
      brightness.isLight ? light() : dark();

  /// Get [light] or [dark] from [context] value
  ColorFamily of(BuildContext context) => from(
        Theme.of(context).brightness,
      );
}

class ColorFamily {
  /// like `primary` of [ColorScheme]
  final Color color;

  /// like `onPrimary` of [ColorScheme]
  final Color onColor;

  /// like `primaryContainer` of [ColorScheme]
  final Color colorContainer;

  /// Like `onPrimaryContainer` of [ColorScheme]
  final Color onColorContainer;

  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });
}

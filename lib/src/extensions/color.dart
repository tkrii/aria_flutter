import 'dart:math' as math;

import 'package:aria/aria.dart';
import 'package:flutter/material.dart' show Brightness, Color, HSLColor;
import 'package:material_color_utilities/blend/blend.dart';

extension AriaColorExtension on Color {
  /// Convert [Color] to [AriaTheme]
  AriaTheme toAriaTheme({
    Color? secondary,
    Color? tertiary,
  }) =>
      AriaTheme(
        primary: this,
        secondary: secondary,
        tertiary: tertiary,
      );

  /// [Brightness] of this [Color].
  Brightness get estimateBrightness => (computeLuminance() >= 0.5).toBrightness;

  double contrastRatio(Color contrast) {
    final lum1 = computeLuminance();
    final lum2 = contrast.computeLuminance();

    final l1 = math.max(lum1, lum2);
    final l2 = math.min(lum1, lum2);

    return (l1 + 0.05) / (l2 + 0.05);
  }

  /// [Color] of text on this color.
  Color get foregroundColor => estimateBrightness.isDark
      ? copyWith(lightness: 0.9)
      : copyWith(lightness: 0.1);

  /// Applies an overlay color to a backgroundColor.
  Color get applyOverlay {
    return Color.alphaBlend(foregroundColor.withOpacity(0.1), this);
  }

  /// The color to use when drawn outside of color.
  Color get outerColor {
    final colorLuminance = computeLuminance();
    final fgColor = colorLuminance < 0.2 || colorLuminance > 0.8
        ? Color.alphaBlend(foregroundColor.withOpacity(0.49), this)
        : this;
    return Color.alphaBlend(fgColor, this);
  }

  /// Computes the color that matches with color and [brightness].
  Color matchingColor(final Brightness brightness) {
    final colorLuminance = computeLuminance();
    final fgColor = colorLuminance < 0.2 && brightness == Brightness.dark
        ? Color.alphaBlend(foregroundColor.withOpacity(0.49), this)
        : colorLuminance > 0.8 && brightness == Brightness.light
            ? Color.alphaBlend(
                foregroundColor.withOpacity(0.28),
                this,
              )
            : this;
    return Color.alphaBlend(fgColor, this);
  }

  /// Harmonize color with current [value]
  Color harmonizeWith(Color color) => Color(
        Blend.harmonize(
          color.value,
          value,
        ),
      );

  /// Create [ExtendedColor] using current colo
  ExtendedColor get extended => ExtendedColor(
        color: this,
      );

  /// Adjust color attributes by the given values.
  /// [alpha], [saturation] and [lightness] values must be clamped between -1.0 and 1.0
  /// [hue] value must be clamped between -1.0 and 1.0
  Color scale({
    double alpha = 0.0,
    double hue = 0.0,
    double saturation = 0.0,
    double lightness = 0.0,
  }) {
    assert(alpha >= -1.0 && alpha <= 1.0);
    assert(hue >= -1.0 && hue <= 1.0);
    assert(saturation >= -1.0 && saturation <= 1.0);
    assert(lightness >= -1.0 && lightness <= 1.0);

    final hslColor = _getPatchedHslColor();

    double scale(double value, double amount, [double upperLimit = 1.0]) {
      var result = value;

      if (amount > 0) {
        result = value + (upperLimit - value) * amount;
      } else if (amount < 0) {
        result = value + value * amount;
      }

      return result.clamp(0.0, upperLimit);
    }

    return hslColor
        .withAlpha(scale(opacity, alpha))
        .withHue(scale(hslColor.hue, hue, 360.0))
        .withSaturation(scale(hslColor.saturation, saturation))
        .withLightness(scale(hslColor.lightness, lightness))
        .toColor();
  }

  /// Adjust color attributes by the given values.
  /// [alpha], [saturation] and [lightness] values must be clamped between -1.0 and 1.0
  /// [hue] value must be clamped between -360.0 and 360.0
  Color adjust({
    double alpha = 0.0,
    double hue = 0.0,
    double saturation = 0.0,
    double lightness = 0.0,
  }) {
    assert(alpha >= -1.0 && alpha <= 1.0);
    assert(hue >= -360.0 && hue <= 360.0);
    assert(saturation >= -1.0 && saturation <= 1.0);
    assert(lightness >= -1.0 && lightness <= 1.0);

    final hslColor = _getPatchedHslColor();

    double adjust(double value, double amount, [double upperLimit = 1.0]) {
      return (value + amount).clamp(0.0, upperLimit);
    }

    return hslColor
        .withAlpha(adjust(hslColor.alpha, alpha))
        .withHue(adjust(hslColor.hue, hue, 360.0))
        .withSaturation(adjust(hslColor.saturation, saturation))
        .withLightness(adjust(hslColor.lightness, lightness))
        .toColor();
  }

  /// Return a copy of this color with attributes replaced by given values.
  /// [alpha], [saturation] and [lightness] values must be clamped between 0.0 and 1.0
  /// [hue] value must be clamped between 0.0 and 360.0
  Color copyWith({
    double? alpha,
    double? hue,
    double? saturation,
    double? lightness,
  }) {
    assert(alpha == null || (alpha >= 0.0 && alpha <= 1.0));
    assert(hue == null || (hue >= 0.0 && hue <= 360.0));
    assert(saturation == null || (saturation >= 0.0 && saturation <= 1.0));
    assert(lightness == null || (lightness >= 0.0 && lightness <= 1.0));

    final hslColor = _getPatchedHslColor();

    return hslColor
        .withAlpha(alpha ?? hslColor.alpha)
        .withHue(hue ?? hslColor.hue)
        .withSaturation(saturation ?? hslColor.saturation)
        .withLightness(lightness ?? hslColor.lightness)
        .toColor();
  }

  HSLColor _getPatchedHslColor() {
    final hslColor = HSLColor.fromColor(this);

    // A pure dark color have saturation level at 1.0, which results in red when lighten it.
    // We reset this value to 0.0, so the result is desaturated as expected:
    return hslColor
        .withSaturation(hslColor.lightness == 0.0 ? 0.0 : hslColor.saturation);
  }
}

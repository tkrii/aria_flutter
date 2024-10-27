import 'dart:ui';

extension AriaBrightnessExtension on Brightness {
  /// Get the inverse of brightness value
  Brightness get inverse =>
      this == Brightness.light ? Brightness.dark : Brightness.light;

  /// Convert the brightness value in boolean
  bool get isLight => this == Brightness.light;

  /// Convert the brightness value in boolean
  bool get isDark => this == Brightness.dark;
}

extension AriaBoolBrightnessExtension on bool {
  /// Convert bool value to [Brightness]
  /// ```true = Brightness.light```
  /// ```false = Brightness.dark```
  Brightness get toBrightness => this ? Brightness.light : Brightness.dark;
}

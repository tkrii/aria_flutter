import 'package:flutter/material.dart'
    show Color, FontWeight, TextStyle, TextTheme;

/// Text styles from [MD3](https://m3.material.io/styles/typography/type-scale-tokens) typography specifications
///
/// The fonts used in this theme are [Inter](https://fonts.google.com/specimen/Inter?query=inter) and [Fira Sans](https://fonts.google.com/specimen/Fira+Sans)
TextTheme createTextTheme(Color textColor) {
  return TextTheme(
    displayLarge: _TextStyle(
      fontFamily: 'Inter',
      fontSize: 57,
      fontWeight: FontWeight.w300,
      textColor: textColor,
    ),
    displayMedium: _TextStyle(
      fontFamily: 'Inter',
      fontSize: 45,
      fontWeight: FontWeight.w300,
      textColor: textColor,
    ),
    displaySmall: _TextStyle(
      fontFamily: 'Inter',
      fontSize: 36,
      fontWeight: FontWeight.w300,
      textColor: textColor,
    ),
    headlineLarge: _TextStyle(
      fontFamily: 'Inter',
      fontSize: 32,
      fontWeight: FontWeight.normal,
      textColor: textColor,
    ),
    headlineMedium: _TextStyle(
      fontFamily: 'Inter',
      fontSize: 28,
      fontWeight: FontWeight.normal,
      textColor: textColor,
    ),
    headlineSmall: _TextStyle(
      fontFamily: 'Inter',
      fontSize: 24,
      fontWeight: FontWeight.normal,
      textColor: textColor,
    ),
    titleLarge: _TextStyle(
      fontFamily: 'Inter',
      fontSize: 22,
      fontWeight: FontWeight.w500,
      textColor: textColor,
    ),
    titleMedium: _TextStyle(
      fontFamily: 'Inter',
      fontSize: 16,
      fontWeight: FontWeight.w500,
      textColor: textColor,
    ),
    titleSmall: _TextStyle(
      fontFamily: 'Inter',
      fontSize: 14,
      fontWeight: FontWeight.w500,
      textColor: textColor,
    ),
    bodyLarge: _TextStyle(
      fontFamily: 'Fira Sans',
      fontSize: 16,
      fontWeight: FontWeight.normal,
      textColor: textColor,
    ),
    bodyMedium: _TextStyle(
      fontFamily: 'Fira Sans',
      fontSize: 14,
      fontWeight: FontWeight.normal,
      textColor: textColor,
    ),
    bodySmall: _TextStyle(
      fontFamily: 'Fira Sans',
      fontSize: 12,
      fontWeight: FontWeight.normal,
      textColor: textColor,
    ),
    labelLarge: _TextStyle(
      fontFamily: 'Fira Sans',
      fontSize: 14,
      fontWeight: FontWeight.w500,
      textColor: textColor,
    ),
    labelMedium: _TextStyle(
      fontFamily: 'Fira Sans',
      fontSize: 12,
      fontWeight: FontWeight.w500,
      textColor: textColor,
    ),
    labelSmall: _TextStyle(
      fontFamily: 'Fira Sans',
      fontSize: 11,
      fontWeight: FontWeight.w500,
      textColor: textColor,
    ),
  );
}

class _TextStyle extends TextStyle {
  final Color textColor;
  const _TextStyle({
    required this.textColor,
    super.fontFamily,
    super.fontSize,
    super.fontWeight,
  }) : super(
          package: 'aria',
          color: textColor,
        );
}

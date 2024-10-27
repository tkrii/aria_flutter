import 'package:aria/src/extensions/src/brightness.dart';
import 'package:flutter/material.dart';

class Utils {
  static const padding = EdgeInsets.symmetric(
    horizontal: 16.0,
    vertical: 8.0,
  );
  static const halfHorizontalPadding = EdgeInsets.symmetric(
    horizontal: 8.0,
    vertical: 8.0,
  );

  /// Circular corner 8
  static final smallBorderRadius = BorderRadius.circular(8);

  /// Circular corner 12
  static final borderRadius = BorderRadius.circular(12);

  /// Circular corner 16
  static final mediumBorderRadius = BorderRadius.circular(16);

  /// Circular corner 26
  static final largeBorderRadius = BorderRadius.circular(26);

  Utils._();

  static BorderRadiusGeometry topBorderRadius(double radius) =>
      BorderRadiusDirectional.only(
        topStart: Radius.circular(radius),
        topEnd: Radius.circular(radius),
      );

  static BorderRadiusGeometry bottomBorderRadius(double radius) =>
      BorderRadiusDirectional.only(
        bottomStart: Radius.circular(radius),
        bottomEnd: Radius.circular(radius),
      );

  static BorderRadiusGeometry startBorderRadius(double radius) =>
      BorderRadiusDirectional.only(
        topStart: Radius.circular(radius),
        bottomStart: Radius.circular(radius),
      );

  static BorderRadiusGeometry endBorderRadius(double radius) =>
      BorderRadiusDirectional.only(
        topEnd: Radius.circular(radius),
        bottomEnd: Radius.circular(radius),
      );

  static BorderSide borderSide(
    Color color, [
    double width = 1.0,
  ]) =>
      BorderSide(
        color: color,
        width: width,
      );

  static BorderSide borderSideOnlyLight(
    Color color,
    Brightness brightness, [
    double width = 1.0,
  ]) =>
      brightness.isLight
          ? BorderSide(
              color: color,
              width: width,
            )
          : BorderSide.none;

  static BorderSide borderSideOnlyDark(
    Color color,
    Brightness brightness, [
    double width = 1.0,
  ]) =>
      brightness.isDark
          ? BorderSide(
              color: color,
              width: width,
            )
          : BorderSide.none;
}

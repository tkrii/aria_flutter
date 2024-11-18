part of '../theme/create_theme.dart';

class Utils {
  static const padding = EdgeInsets.symmetric(
    horizontal: 24.0,
    vertical: 12.0,
  );
  static const halfHorizontalPadding = EdgeInsets.symmetric(
    horizontal: 12.0,
    vertical: 12.0,
  );

  static double thumbnailSmallBorder = 12;
  static double thumbnailMediumBorder = 16;
  static double thumbnailLargeBorder = 26;

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

import 'package:flutter/widgets.dart';

enum HarmonyColors {
  blue(
    Color(0xff564af7),
  ),
  cyan(
    Color(0xff46b1e3),
  ),
  teal(
    Color(0xff61cfb3),
  ),
  green(
    Color(0xff64bb5c),
  ),
  lime(
    Color(0xffa5d61d),
  ),
  violet(
    Color(0xffac49f5),
  ),
  pink(
    Color(0xffe64566),
  ),
  red(
    Color(0xffe84026),
  ),
  orange(
    Color(0xffed6f21),
  ),
  pumpkin(
    Color(0xfff9a01e),
  ),
  yellow(
    Color(0xfff7ce00),
  ),
  ;

  final Color accent;
  const HarmonyColors(
    this.accent,
  );
}

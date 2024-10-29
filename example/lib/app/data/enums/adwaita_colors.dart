import 'package:flutter/widgets.dart';

enum AdwaitaColors {
  blue(
    Color(0xff3584e4),
  ),
  teal(
    Color(0xff2190a4),
  ),
  green(
    Color(0xff3a944a),
  ),
  yellow(
    Color(0xffc88800),
  ),
  orange(
    Color(0xffed5b00),
  ),
  red(
    Color(0xffe62d42),
  ),
  pink(
    Color(0xffd56199),
  ),
  purple(
    Color(0xff9141ac),
  ),
  slate(
    Color(0xff6f8396),
  ),
  ;

  final Color accent;
  const AdwaitaColors(
    this.accent,
  );
}

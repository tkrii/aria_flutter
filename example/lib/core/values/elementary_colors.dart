import 'dart:ui';

enum ElementaryColors {
  strawberry(Color(0xffc6262e)),
  orange(Color(0xfff37329)),
  banana(Color(0xfff9c440)),
  lime(Color(0xff68b723)),
  mint(Color(0xff28bca3)),
  blueberry(Color(0xff3689e6)),
  grape(Color(0xffa56de2)),
  bubblegum(Color(0xffde3e80)),
  cocoa(Color(0xff715344)),
  silver(Color(0xffabacae)),
  slate(Color(0xff485a6c)),
  black(Color(0xff323232));

  final Color color;
  const ElementaryColors(this.color);
}
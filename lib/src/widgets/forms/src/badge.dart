import 'package:flutter/material.dart';

BadgeThemeData badgeTheme(ColorScheme colorScheme) => BadgeThemeData(
      backgroundColor: colorScheme.tertiary,
      textColor: colorScheme.onTertiary,
    );

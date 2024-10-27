import 'package:aria/src/theme/src/text_theme.dart';
import 'package:flutter/material.dart';

TabBarTheme tabBarTheme(ColorScheme colorScheme) {
  return TabBarTheme(
    indicatorColor: colorScheme.secondaryContainer,
    dividerColor: colorScheme.outlineVariant,
    labelColor: colorScheme.primary,
    unselectedLabelColor: colorScheme.onSurfaceVariant,
    indicatorSize: TabBarIndicatorSize.label,
  );
}

NavigationRailThemeData navigationRailThemeData(ColorScheme colorScheme) {
  return NavigationRailThemeData(
    elevation: 6,
    backgroundColor: colorScheme.surface,
    indicatorColor: colorScheme.secondaryContainer,
    indicatorShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    selectedIconTheme: IconThemeData(color: colorScheme.onSecondaryContainer),
    unselectedIconTheme: IconThemeData(color: colorScheme.onSurfaceVariant),
    selectedLabelTextStyle: createTextTheme(colorScheme.primary).labelMedium,
    unselectedLabelTextStyle:
        createTextTheme(colorScheme.onSurfaceVariant).labelSmall,
  );
}

part of '../../theme/scheme_theme.dart';

TabBarTheme _tabBarTheme(ColorScheme colorScheme) {
  return TabBarTheme(
    indicatorColor: colorScheme.primary,
    dividerColor: colorScheme.outlineVariant,
    labelColor: colorScheme.primary,
    unselectedLabelColor: colorScheme.onSurfaceVariant,
    indicatorSize: TabBarIndicatorSize.label,
  );
}

NavigationRailThemeData _navigationRailThemeData(ColorScheme colorScheme) {
  return NavigationRailThemeData(
    elevation: 6,
    backgroundColor: colorScheme.surfaceContainerHigh,
    indicatorColor: colorScheme.surfaceContainerHighest,
    indicatorShape: RoundedRectangleBorder(
      side: BorderSide(
        color: colorScheme.outline,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    selectedIconTheme: IconThemeData(color: colorScheme.primary),
    unselectedIconTheme: IconThemeData(color: colorScheme.onSurfaceVariant),
    selectedLabelTextStyle: createTextTheme(colorScheme.primary).labelMedium!,
    unselectedLabelTextStyle:
        createTextTheme(colorScheme.onSurfaceVariant).labelMedium!,
  );
}

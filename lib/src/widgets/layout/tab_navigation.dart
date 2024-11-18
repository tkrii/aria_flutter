part of '../../theme/create_theme.dart';

TabBarTheme tabBarTheme(ColorScheme colorScheme) {
  return TabBarTheme(
    indicatorColor: colorScheme.primary,
    dividerColor: colorScheme.outlineVariant,
    labelStyle: createTextTheme(colorScheme.primary).labelLarge,
    unselectedLabelStyle:
        createTextTheme(colorScheme.onSurfaceVariant).labelLarge,
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
    selectedLabelTextStyle: createTextTheme(colorScheme.onSurface).labelSmall,
    unselectedLabelTextStyle:
        createTextTheme(colorScheme.onSurfaceVariant).labelSmall,
  );
}

part of '../../theme/scheme_theme.dart';

TabBarTheme tabBarTheme(ColorScheme colorScheme) {
  return TabBarTheme(
    indicatorColor: colorScheme.secondary,
    dividerColor: colorScheme.outline,
    labelColor: colorScheme.secondary,
    unselectedLabelColor: colorScheme.onSurfaceSecondary,
    indicatorSize: TabBarIndicatorSize.label,
  );
}

NavigationRailThemeData navigationRailThemeData(ColorScheme colorScheme) {
  return NavigationRailThemeData(
    elevation: 6,
    backgroundColor: colorScheme.surface,
    indicatorColor: colorScheme.surfaceDim,
    indicatorShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    selectedIconTheme: IconThemeData(color: colorScheme.onSurface),
    unselectedIconTheme: IconThemeData(color: colorScheme.onSurfaceSecondary),
    selectedLabelTextStyle:
        createTextTheme(colorScheme.onSurfaceVariant).labelMedium,
    unselectedLabelTextStyle:
        createTextTheme(colorScheme.onSurfaceSecondary).labelSmall,
  );
}

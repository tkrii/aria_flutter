part of '../../theme/scheme_theme.dart';

TabBarTheme _tabBarTheme(ColorScheme colorScheme) {
  return TabBarTheme(
    indicatorColor: colorScheme.primary,
    dividerColor: colorScheme.outlineVariant,
    labelColor: colorScheme.onSurface,
    unselectedLabelColor: colorScheme.onSurfaceVariant,
    indicatorSize: TabBarIndicatorSize.label,
  );
}

NavigationRailThemeData _navigationRailThemeData(ColorScheme colorScheme) {
  return NavigationRailThemeData(
    elevation: 6,
    backgroundColor: colorScheme.surface,
    indicatorColor: colorScheme.brightness.isLight
        ? const Color(0xfff6f6f6)
        : const Color(0xff272727),
    indicatorShape: RoundedRectangleBorder(
      side: BorderSide(
        color: colorScheme.outline,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    selectedIconTheme: IconThemeData(color: colorScheme.primary),
    unselectedIconTheme: IconThemeData(color: colorScheme.onSurfaceVariant),
    selectedLabelTextStyle: createTextTheme(colorScheme.onSurface).labelMedium,
    unselectedLabelTextStyle:
        createTextTheme(colorScheme.onSurfaceVariant).labelMedium,
  );
}

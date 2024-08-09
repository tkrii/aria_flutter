part of '../../theme/scheme_theme.dart';

DrawerThemeData _drawerTheme(ColorScheme colorScheme) {
  return DrawerThemeData(
    elevation: 8,
    backgroundColor: colorScheme.surfaceContainerHighest,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadiusDirectional.only(
        topEnd: Radius.circular(26),
        bottomEnd: Radius.circular(26),
      ),
    ),
    endShape: const RoundedRectangleBorder(
      borderRadius: BorderRadiusDirectional.only(
        topStart: Radius.circular(26),
        bottomStart: Radius.circular(26),
      ),
    ),
  );
}

NavigationDrawerThemeData _navigationDrawerTheme(ColorScheme colorScheme) {
  return NavigationDrawerThemeData(
    elevation: 8,
    backgroundColor: colorScheme.surfaceContainerHighest,
    indicatorColor: colorScheme.surfaceContainer,
    indicatorShape: RoundedRectangleBorder(
      side: BorderSide(
        color: colorScheme.outline,
      ),
      borderRadius: BorderRadius.circular(12),
    ),
    iconTheme: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected)
          ? IconThemeData(color: colorScheme.primary)
          : IconThemeData(color: colorScheme.onSurfaceVariant),
    ),
    labelTextStyle: WidgetStateTextStyle.resolveWith(
      (state) => state.contains(WidgetState.selected)
          ? createTextTheme(colorScheme.onSurface).labelMedium!
          : createTextTheme(colorScheme.onSurfaceVariant).labelMedium!,
    ),
  );
}

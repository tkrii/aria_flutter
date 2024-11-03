part of '../../theme/scheme_theme.dart';

DrawerThemeData drawerTheme(ColorScheme colorScheme) {
  return DrawerThemeData(
    elevation: 8,
    backgroundColor: colorScheme.surfaceContainer,
    shape: RoundedRectangleBorder(
      borderRadius: Utils.endBorderRadius(
        26,
      ),
    ),
    endShape: RoundedRectangleBorder(
      borderRadius: Utils.startBorderRadius(26),
    ),
  );
}

NavigationDrawerThemeData navigationDrawerTheme(ColorScheme colorScheme) {
  return NavigationDrawerThemeData(
    elevation: 8,
    backgroundColor: colorScheme.surfaceContainer,
    indicatorColor: colorScheme.primary,
    indicatorShape: RoundedRectangleBorder(
      borderRadius: Utils.borderRadius,
    ),
    iconTheme: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected)
          ? IconThemeData(color: colorScheme.onPrimary)
          : IconThemeData(color: colorScheme.onSurfaceVariant),
    ),
    labelTextStyle: WidgetStateTextStyle.resolveWith(
      (state) => state.contains(WidgetState.selected)
          ? createTextTheme(colorScheme.onPrimary).labelMedium!
          : createTextTheme(colorScheme.onSurfaceVariant).labelMedium!,
    ),
  );
}

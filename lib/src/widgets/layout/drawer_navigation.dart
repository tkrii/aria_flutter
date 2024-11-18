part of '../../theme/create_theme.dart';

DrawerThemeData drawerTheme(ColorScheme colorScheme) {
  return DrawerThemeData(
    elevation: 8,
    backgroundColor: colorScheme.surface,
    shape: RoundedRectangleBorder(
      borderRadius: Utils.endBorderRadius(
        Utils.thumbnailLargeBorder,
      ),
    ),
    endShape: RoundedRectangleBorder(
      borderRadius: Utils.startBorderRadius(
        Utils.thumbnailLargeBorder,
      ),
    ),
  );
}

NavigationDrawerThemeData navigationDrawerTheme(ColorScheme colorScheme) {
  return NavigationDrawerThemeData(
    elevation: 8,
    backgroundColor: colorScheme.surface,
    indicatorColor: colorScheme.secondaryContainer,
    indicatorShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        Utils.thumbnailLargeBorder,
      ),
    ),
    iconTheme: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected)
          ? IconThemeData(color: colorScheme.onSecondaryContainer)
          : IconThemeData(color: colorScheme.onSurfaceVariant),
    ),
    labelTextStyle: WidgetStateTextStyle.resolveWith(
      (state) => state.contains(WidgetState.selected)
          ? createTextTheme(colorScheme.onSecondaryContainer).labelMedium!
          : createTextTheme(colorScheme.onSurfaceVariant).labelMedium!,
    ),
  );
}

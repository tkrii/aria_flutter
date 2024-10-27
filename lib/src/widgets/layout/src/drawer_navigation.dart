import 'package:aria/src/theme/src/text_theme.dart';
import 'package:aria/src/widgets/utils.dart';
import 'package:flutter/material.dart';

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
    backgroundColor: colorScheme.surfaceDim,
    indicatorColor: colorScheme.secondaryContainer,
    indicatorShape: RoundedRectangleBorder(
      borderRadius: Utils.borderRadius,
    ),
    iconTheme: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected)
          ? IconThemeData(color: colorScheme.primary)
          : IconThemeData(color: colorScheme.onSurfaceVariant),
    ),
    labelTextStyle: WidgetStateTextStyle.resolveWith(
      (state) => state.contains(WidgetState.selected)
          ? createTextTheme(colorScheme.onSecondaryContainer).labelMedium!
          : createTextTheme(colorScheme.onSurfaceVariant).labelMedium!,
    ),
  );
}

part of '../../theme/scheme_theme.dart';

BottomAppBarTheme _bottomAppBarTheme(ColorScheme colorScheme) =>
    BottomAppBarTheme(
      color: colorScheme.surfaceContainer,
    );

BottomNavigationBarThemeData _bottomNavigationTheme(ColorScheme colorScheme) {
  return BottomNavigationBarThemeData(
    elevation: 6,
    backgroundColor: colorScheme.surfaceContainer,
    selectedItemColor: colorScheme.primary,
    unselectedItemColor: colorScheme.onSurfaceVariant,
  );
}

NavigationBarThemeData _navigationBarTheme(ColorScheme colorScheme) {
  return NavigationBarThemeData(
    elevation: 6,
    backgroundColor: colorScheme.surfaceContainer,
    indicatorColor: colorScheme.secondaryContainer,
    indicatorShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    iconTheme: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected)
          ? IconThemeData(color: colorScheme.onSecondaryContainer)
          : IconThemeData(color: colorScheme.onSurfaceVariant),
    ),
    labelTextStyle: WidgetStateTextStyle.resolveWith(
      (state) => state.contains(WidgetState.selected)
          ? createTextTheme(colorScheme.primary).labelMedium!
          : createTextTheme(colorScheme.onSurfaceVariant).labelSmall!,
    ),
  );
}

BottomSheetThemeData _bottomSheetThemeData(ColorScheme colorScheme) =>
    BottomSheetThemeData(
      showDragHandle: true,
      dragHandleColor: colorScheme.secondary,
      backgroundColor: colorScheme.surfaceContainer,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(26),
          topEnd: Radius.circular(26),
        ),
      ),
    );

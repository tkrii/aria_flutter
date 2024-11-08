part of '../../theme/create_theme.dart';

BottomAppBarTheme bottomAppBarTheme(ColorScheme colorScheme) =>
    BottomAppBarTheme(
      color: colorScheme.surfaceContainer,
    );

BottomNavigationBarThemeData bottomNavigationTheme(ColorScheme colorScheme) {
  return BottomNavigationBarThemeData(
    elevation: 6,
    backgroundColor: colorScheme.surfaceContainer,
    selectedItemColor: colorScheme.primary,
    unselectedItemColor: colorScheme.onSurfaceVariant,
  );
}

NavigationBarThemeData navigationBarTheme(ColorScheme colorScheme) {
  return NavigationBarThemeData(
    elevation: 6,
    backgroundColor: colorScheme.surfaceContainer,
    indicatorColor: colorScheme.surfaceDim,
    indicatorShape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    iconTheme: WidgetStateProperty.resolveWith(
      (states) => states.contains(WidgetState.selected)
          ? IconThemeData(color: colorScheme.onSurface)
          : IconThemeData(color: colorScheme.onSurfaceSecondary),
    ),
    labelTextStyle: WidgetStateTextStyle.resolveWith(
      (state) => createTextTheme(state.contains(WidgetState.selected)
              ? colorScheme.onSurface
              : colorScheme.onSurfaceSecondary)
          .labelSmall!,
    ),
  );
}

BottomSheetThemeData bottomSheetThemeData(ColorScheme colorScheme) =>
    BottomSheetThemeData(
      showDragHandle: true,
      dragHandleColor: colorScheme.onSurfaceSecondary,
      backgroundColor: colorScheme.surfaceContainer,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(26),
          topEnd: Radius.circular(26),
        ),
      ),
    );

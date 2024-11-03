part of '../../theme/scheme_theme.dart';

ListTileThemeData listTileThemeData(ColorScheme colorScheme) {
  return ListTileThemeData(
    selectedTileColor: colorScheme.surfaceDim,
    selectedColor: colorScheme.onSurface,
    iconColor: colorScheme.onSurfaceSecondary,
    titleTextStyle: createTextTheme(colorScheme.onSurface).bodyLarge,
    subtitleTextStyle:
        createTextTheme(colorScheme.onSurfaceSecondary).bodyMedium,
    shape: RoundedRectangleBorder(
      borderRadius: Utils.mediumBorderRadius,
    ),
  );
}

part of '../../theme/create_theme.dart';

ListTileThemeData listTileThemeData(ColorScheme colorScheme) {
  return ListTileThemeData(
    selectedTileColor: colorScheme.secondary,
    selectedColor: colorScheme.onSecondary,
    iconColor: colorScheme.onSurfaceSecondary,
    titleTextStyle: createTextTheme(colorScheme.onSurface).bodyLarge,
    subtitleTextStyle:
        createTextTheme(colorScheme.onSurfaceSecondary).bodyMedium,
    shape: RoundedRectangleBorder(
      borderRadius: Utils.mediumBorderRadius,
    ),
  );
}

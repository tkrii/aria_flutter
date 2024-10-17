part of '../../theme/scheme_theme.dart';

ListTileThemeData _listTileThemeData(ColorScheme colorScheme) {
  return ListTileThemeData(
    selectedTileColor: colorScheme.secondaryContainer,
    selectedColor: colorScheme.onSecondaryContainer,
    iconColor: colorScheme.onSurfaceSecondary,
    titleTextStyle: createTextTheme(colorScheme.onSurface).bodyLarge,
    subtitleTextStyle:
        createTextTheme(colorScheme.onSurfaceSecondary).bodyMedium,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
}

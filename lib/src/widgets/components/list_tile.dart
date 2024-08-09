part of '../../theme/scheme_theme.dart';

ListTileThemeData _listTileThemeData(ColorScheme colorScheme) {
  return ListTileThemeData(
    selectedTileColor: colorScheme.surfaceContainer,
    selectedColor: colorScheme.primary,
    iconColor: colorScheme.onSurfaceSecondary,
    titleTextStyle: createTextTheme(colorScheme.onSurface).bodyLarge,
    subtitleTextStyle:
        createTextTheme(colorScheme.onSurfaceSecondary).bodyMedium,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
}

part of '../../theme/create_theme.dart';

ListTileThemeData listTileThemeData(ColorScheme colorScheme) {
  return ListTileThemeData(
    selectedTileColor: colorScheme.primaryContainer,
    selectedColor: colorScheme.primary,
    iconColor: colorScheme.onSurfaceVariant,
    titleTextStyle: createTextTheme(colorScheme.onSurface).bodyLarge,
    subtitleTextStyle: createTextTheme(colorScheme.onSurfaceVariant).bodyMedium,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        Utils.thumbnailMediumBorder,
      ),
    ),
  );
}

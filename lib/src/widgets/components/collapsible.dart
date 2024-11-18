part of '../../theme/create_theme.dart';

ExpansionTileThemeData expansionTileThemeData(
  ColorScheme colorScheme,
) =>
    ExpansionTileThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Utils.thumbnailMediumBorder,
        ),
      ),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Utils.thumbnailMediumBorder,
        ),
      ),
      backgroundColor: Color.lerp(
        colorScheme.surfaceContainerLow,
        colorScheme.secondaryContainer,
        0.5,
      ),
      collapsedBackgroundColor: Colors.transparent,
      collapsedIconColor: colorScheme.onSurfaceVariant,
      iconColor: colorScheme.secondary,
      collapsedTextColor: colorScheme.onSurface,
      textColor: colorScheme.secondary,
    );

part of '../../theme/create_theme.dart';

ExpansionTileThemeData expansionTileThemeData(
  ColorScheme colorScheme,
) =>
    ExpansionTileThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: Utils.mediumBorderRadius,
      ),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: Utils.mediumBorderRadius,
      ),
      backgroundColor: Color.lerp(
        colorScheme.surfaceContainerLow,
        colorScheme.secondaryContainer,
        0.5,
      ),
      collapsedBackgroundColor: Colors.transparent,
      collapsedIconColor: colorScheme.onSurfaceSecondary,
      iconColor: colorScheme.secondary,
      collapsedTextColor: colorScheme.onSurface,
      textColor: colorScheme.secondary,
    );

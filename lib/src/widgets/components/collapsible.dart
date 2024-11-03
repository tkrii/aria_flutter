part of '../../theme/scheme_theme.dart';

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
        colorScheme.surfaceContainerHigh,
        colorScheme.surfaceBright,
        0.75,
      ),
      collapsedBackgroundColor: Colors.transparent,
      collapsedIconColor: colorScheme.onSurface,
      iconColor: colorScheme.secondary,
      collapsedTextColor: colorScheme.onSurface,
      textColor: colorScheme.secondary,
    );

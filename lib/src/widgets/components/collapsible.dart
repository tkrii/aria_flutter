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
        colorScheme.secondaryContainer,
        0.75,
      ),
      collapsedBackgroundColor: Colors.transparent,
      collapsedIconColor: colorScheme.onSurface,
      iconColor: colorScheme.onSecondary,
      collapsedTextColor: colorScheme.onSurface,
      textColor: colorScheme.onSecondary,
    );

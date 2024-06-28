part of '../../theme/scheme_theme.dart';

ExpansionTileThemeData _expansionTileThemeData(
  ColorScheme colorScheme,
) =>
    ExpansionTileThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: colorScheme.outline,
        ),
      ),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      backgroundColor:
          colorScheme.surfaceContainer.mix(colorScheme.surfaceContainerHigh),
      collapsedBackgroundColor: Colors.transparent,
      collapsedIconColor: colorScheme.onSurfaceSecondary,
      iconColor: colorScheme.primary,
      collapsedTextColor: colorScheme.onSurface,
      textColor: colorScheme.secondary,
    );

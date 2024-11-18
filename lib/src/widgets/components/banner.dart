part of '../../theme/create_theme.dart';

MaterialBannerThemeData materialBannerThemeData(ColorScheme colorScheme) =>
    MaterialBannerThemeData(
      elevation: 0,
      backgroundColor: colorScheme.surfaceContainer,
      dividerColor: colorScheme.outline,
    );

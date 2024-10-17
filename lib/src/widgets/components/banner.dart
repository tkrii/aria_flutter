part of '../../theme/scheme_theme.dart';

MaterialBannerThemeData _materialBannerThemeData(ColorScheme colorScheme) =>
    MaterialBannerThemeData(
      elevation: 0,
      backgroundColor: colorScheme.surfaceContainer,
      dividerColor: colorScheme.outline,
    );

part of '../../theme/scheme_theme.dart';

CardTheme cardTheme(ColorScheme colorScheme) => CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: Utils.mediumBorderRadius,
        side: Utils.borderSide(
          colorScheme.disabled,
        ),
      ),
    );

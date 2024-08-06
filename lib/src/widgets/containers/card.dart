part of '../../theme/scheme_theme.dart';

CardTheme _cardTheme(ColorScheme colorScheme) => CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: colorScheme.outline,
        ),
      ),
    );

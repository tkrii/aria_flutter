part of '../../theme/scheme_theme.dart';

DialogTheme _dialogTheme(ColorScheme colorScheme) => DialogTheme(
      backgroundColor: colorScheme.surfaceContainer,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26),
        side: BorderSide(
          color: colorScheme.outline,
        ),
      ),
      iconColor: colorScheme.primaryContainer,
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
    );

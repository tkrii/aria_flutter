part of '../../theme/scheme_theme.dart';

DialogTheme _dialogTheme(ColorScheme colorScheme) => DialogTheme(
      backgroundColor: colorScheme.surfaceContainerHigh,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26),
        side: colorScheme.isDark
            ? BorderSide(
                color: colorScheme.outline,
              )
            : BorderSide.none,
      ),
      iconColor: colorScheme.primaryContainer,
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
    );

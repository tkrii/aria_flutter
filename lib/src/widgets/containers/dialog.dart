part of '../../theme/create_theme.dart';

DialogTheme dialogTheme(ColorScheme colorScheme) => DialogTheme(
      backgroundColor: colorScheme.surfaceContainerHigh,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Utils.thumbnailLargeBorder,
        ),
        side: Utils.borderSideOnlyDark(
          colorScheme.outlineVariant,
          colorScheme.brightness,
        ),
      ),
      iconColor: colorScheme.primary,
      insetPadding: Utils.padding,
    );

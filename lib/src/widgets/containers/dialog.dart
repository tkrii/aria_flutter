part of '../../theme/create_theme.dart';

DialogTheme dialogTheme(ColorScheme colorScheme) => DialogTheme(
      backgroundColor: colorScheme.surfaceContainerHigh,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: Utils.largeBorderRadius,
        side: Utils.borderSideOnlyDark(
          colorScheme.disabled,
          colorScheme.brightness,
        ),
      ),
      iconColor: colorScheme.primary,
      insetPadding: Utils.padding,
    );

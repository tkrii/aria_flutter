part of '../../theme/scheme_theme.dart';

ScrollbarThemeData scrollbarThemeData(ColorScheme colorScheme) =>
    ScrollbarThemeData(
      thumbColor: WidgetStatePropertyAll(
        colorScheme.primaryContainer,
      ),
      crossAxisMargin: -8,
      trackColor: WidgetStatePropertyAll(
        colorScheme.disabled,
      ),
    );

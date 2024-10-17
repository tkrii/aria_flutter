part of '../../theme/scheme_theme.dart';

ScrollbarThemeData _scrollbarThemeData(ColorScheme colorScheme) =>
    ScrollbarThemeData(
      thumbColor: WidgetStatePropertyAll(
        colorScheme.outline,
      ),
    );

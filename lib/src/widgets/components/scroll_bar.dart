part of '../../theme/create_theme.dart';

ScrollbarThemeData scrollbarThemeData(ColorScheme colorScheme) =>
    ScrollbarThemeData(
      thumbColor: WidgetStatePropertyAll(
        colorScheme.outline,
      ),
    );

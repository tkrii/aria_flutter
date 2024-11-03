part of '../../theme/scheme_theme.dart';

ScrollbarThemeData scrollbarThemeData(ColorScheme colorScheme) =>
    ScrollbarThemeData(
      thumbColor: WidgetStatePropertyAll(
        colorScheme.outlineVariant,
      ),
    );

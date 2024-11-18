part of '../../theme/create_theme.dart';

SearchBarThemeData searchBarThemeData(ColorScheme colorScheme) =>
    SearchBarThemeData(
      elevation: WidgetStateProperty.resolveWith(
        (state) => state.contains(WidgetState.disabled) ? 0 : 6,
      ),
      backgroundColor: WidgetStateProperty.resolveWith(
        (state) => state.contains(WidgetState.disabled)
            ? colorScheme.outlineVariant
            : colorScheme.surfaceContainerHighest,
      ),
    );

SearchViewThemeData searchViewThemeData(ColorScheme colorScheme) =>
    SearchViewThemeData(
      elevation: 6,
      dividerColor: colorScheme.outlineVariant,
      backgroundColor: colorScheme.surfaceContainerHigh,
    );

part of '../../theme/scheme_theme.dart';

SearchBarThemeData _searchBarThemeData(ColorScheme colorScheme) =>
    SearchBarThemeData(
      elevation: WidgetStateProperty.resolveWith(
        (state) => state.contains(WidgetState.disabled) ? 0 : 6,
      ),
      backgroundColor: WidgetStateProperty.resolveWith(
        (state) => state.contains(WidgetState.disabled)
            ? colorScheme.disabled
            : colorScheme.surfaceContainerLowest,
      ),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26),
        ),
      ),
    );

SearchViewThemeData _searchViewThemeData(ColorScheme colorScheme) =>
    SearchViewThemeData(
      dividerColor: colorScheme.outlineVariant,
      backgroundColor: colorScheme.surface,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: colorScheme.outline,
        ),
        borderRadius: BorderRadius.circular(26),
      ),
    );
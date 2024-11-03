part of '../../theme/scheme_theme.dart';

SearchBarThemeData searchBarThemeData(ColorScheme colorScheme) =>
    SearchBarThemeData(
      elevation: WidgetStateProperty.resolveWith(
        (state) => state.contains(WidgetState.disabled) ? 0 : 6,
      ),
      backgroundColor: WidgetStateProperty.resolveWith(
        (state) => state.contains(WidgetState.disabled)
            ? colorScheme.disabled
            : colorScheme.surfaceContainerHighest,
      ),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: Utils.largeBorderRadius,
        ),
      ),
    );

SearchViewThemeData searchViewThemeData(ColorScheme colorScheme) =>
    SearchViewThemeData(
      elevation: 6,
      dividerColor: colorScheme.outlineVariant,
      backgroundColor: colorScheme.surfaceContainerHigh,
      shape: RoundedRectangleBorder(
        borderRadius: Utils.largeBorderRadius,
      ),
    );

part of '../../theme/create_theme.dart';

SwitchThemeData switchThemeData(ColorScheme colorScheme) => SwitchThemeData(
      thumbColor: WidgetStateColor.resolveWith(
        (state) => state.contains(WidgetState.disabled)
            ? colorScheme.outlineVariant
            : state.contains(WidgetState.selected)
                ? colorScheme.success.onColor
                : colorScheme.success.color,
      ),
      trackOutlineWidth: WidgetStateProperty.resolveWith(
        (state) => state.contains(WidgetState.selected) &&
                !state.contains(WidgetState.disabled)
            ? 0
            : 2,
      ),
      trackOutlineColor: WidgetStateColor.resolveWith(
        (state) => state.contains(WidgetState.disabled)
            ? colorScheme.outlineVariant
            : state.contains(WidgetState.selected)
                ? Colors.transparent
                : colorScheme.outline,
      ),
      trackColor: WidgetStateColor.resolveWith(
        (state) => state.contains(WidgetState.selected) &&
                !state.contains(WidgetState.disabled)
            ? colorScheme.success.color
            : colorScheme.surfaceContainerHighest,
      ),
    );

part of '../../theme/scheme_theme.dart';

SwitchThemeData _switchThemeData(ColorScheme colorScheme) => SwitchThemeData(
      thumbColor: WidgetStateColor.resolveWith(
        (state) => state.contains(WidgetState.disabled)
            ? colorScheme.disabled
            : state.contains(WidgetState.selected)
                ? colorScheme.success.colorContainer
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
            ? colorScheme.disabled
            : state.contains(WidgetState.selected)
                ? Colors.transparent
                : colorScheme.success.onColor.mix(colorScheme.success.color),
      ),
      trackColor: WidgetStateColor.resolveWith((state) =>
          state.contains(WidgetState.selected) &&
                  !state.contains(WidgetState.disabled)
              ? colorScheme.success.color
              : Colors.transparent),
    );

part of '../../theme/scheme_theme.dart';

SegmentedButtonThemeData segmentedButtonThemeData(ColorScheme colorScheme) =>
    SegmentedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateColor.resolveWith(
          (state) => state.contains(WidgetState.disabled)
              ? Colors.transparent
              : state.contains(WidgetState.selected)
                  ? colorScheme.primary
                  : colorScheme.surfaceContainerLowest,
        ),
        foregroundColor: WidgetStateColor.resolveWith(
          (state) => state.contains(WidgetState.disabled)
              ? colorScheme.disabled
              : state.contains(WidgetState.selected)
                  ? colorScheme.onPrimary
                  : colorScheme.onSurface,
        ),
      ).merge(commonButton),
      selectedIcon: const Icon(Icons.check_rounded),
    );

ToggleButtonsThemeData toggleButtonsThemeData(ColorScheme colorScheme) =>
    ToggleButtonsThemeData(
      color: colorScheme.onSurface,
      selectedColor: colorScheme.onPrimary,
      disabledColor: colorScheme.disabled,
      fillColor: colorScheme.primary,
      selectedBorderColor: colorScheme.primary.outerColor,
      borderColor: colorScheme.outline,
      borderRadius: BorderRadius.circular(12),
    );

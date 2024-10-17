part of '../../theme/scheme_theme.dart';

SegmentedButtonThemeData _segmentedButtonThemeData(ColorScheme colorScheme) =>
    SegmentedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateColor.resolveWith(
          (state) => state.contains(WidgetState.disabled)
              ? colorScheme.disabled
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
      ).merge(_commonButton),
      selectedIcon: const Icon(Icons.check_rounded),
    );

ToggleButtonsThemeData _toggleButtonsThemeData(ColorScheme colorScheme) =>
    ToggleButtonsThemeData(
      color: colorScheme.surfaceContainerLowest,
      selectedColor: colorScheme.onPrimary,
      disabledColor: colorScheme.disabled,
      fillColor: colorScheme.primary,
      selectedBorderColor: colorScheme.outlineVariant,
      borderRadius: BorderRadius.circular(12),
    );

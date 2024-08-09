part of '../../theme/scheme_theme.dart';

SegmentedButtonThemeData _segmentedButtonThemeData(ColorScheme colorScheme) =>
    SegmentedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateColor.resolveWith(
          (state) => state.contains(WidgetState.disabled)
              ? colorScheme.surfaceContainerLowest
              : state.contains(WidgetState.selected)
                  ? colorScheme.primaryContainer
                  : colorScheme.surfaceContainerLowest,
        ),
        foregroundColor: WidgetStateColor.resolveWith(
          (state) => state.contains(WidgetState.disabled)
              ? colorScheme.disabled
              : state.contains(WidgetState.selected)
                  ? colorScheme.onPrimaryContainer
                  : colorScheme.onSurface,
        ),
      ).merge(_commonButton),
      selectedIcon: const Icon(Icons.check_rounded),
    );

ToggleButtonsThemeData _toggleButtonsThemeData(ColorScheme colorScheme) =>
    ToggleButtonsThemeData(
      color: colorScheme.onSurface,
      selectedColor: colorScheme.onPrimaryContainer,
      disabledColor: colorScheme.disabled,
      fillColor: colorScheme.primaryContainer,
      selectedBorderColor: colorScheme.outlineVariant,
      borderRadius: BorderRadius.circular(12),
    );

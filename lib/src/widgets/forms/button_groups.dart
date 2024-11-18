part of '../../theme/create_theme.dart';

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
              ? colorScheme.outlineVariant
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
      disabledColor: colorScheme.outlineVariant,
      fillColor: colorScheme.primary,
      selectedBorderColor: colorScheme.primary.outerColor,
      borderColor: colorScheme.outline,
      borderRadius: BorderRadius.circular(
        Utils.thumbnailSmallBorder,
      ),
    );

part of '../../theme/create_theme.dart';

ButtonStyle commonButton = ButtonStyle(
  shape: WidgetStatePropertyAll(
    RoundedRectangleBorder(
      borderRadius: Utils.borderRadius,
    ),
  ),
);

OutlinedButtonThemeData outlinedButtonThemeData(ColorScheme colorScheme) =>
    OutlinedButtonThemeData(
      style: ButtonStyle(
        side: WidgetStateProperty.resolveWith(
          (state) {
            if (state.contains(WidgetState.disabled)) {
              return null;
            }
            return BorderSide(
              color: colorScheme.primary,
            );
          },
        ),
      ).merge(commonButton),
    );

ElevatedButtonThemeData elevatedButtonThemeData(ColorScheme colorScheme) =>
    ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith(
          (state) => state.contains(WidgetState.disabled)
              ? null
              : colorScheme.surfaceContainerLowest,
        ),
        foregroundColor: WidgetStateProperty.resolveWith(
          (state) => state.contains(WidgetState.disabled)
              ? null
              : colorScheme.onSurface,
        ),
      ).merge(commonButton),
    );

FilledButtonThemeData filledButtonThemeData(ColorScheme colorScheme) =>
    FilledButtonThemeData(
      style: const ButtonStyle().merge(commonButton),
    );

TextButtonThemeData textButtonThemeData(ColorScheme colorScheme) =>
    TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.resolveWith(
          (state) => state.contains(WidgetState.disabled)
              ? null
              : colorScheme.accent.color,
        ),
      ).merge(commonButton),
    );

FloatingActionButtonThemeData floatingActionButtonThemeData(
  ColorScheme colorScheme,
) =>
    FloatingActionButtonThemeData(
      disabledElevation: 0,
      backgroundColor: WidgetStateColor.resolveWith(
        (state) => state.contains(WidgetState.disabled)
            ? colorScheme.secondary.withOpacity(0.5)
            : colorScheme.secondary,
      ),
      foregroundColor: WidgetStateColor.resolveWith(
        (state) => state.contains(WidgetState.disabled)
            ? colorScheme.onSecondary.withOpacity(0.5)
            : colorScheme.onSecondary,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26),
      ),
    );

ButtonStyle cancelButtonStyle(ColorScheme colorScheme) => TextButton.styleFrom(
      foregroundColor: colorScheme.warning.color,
    ).merge(commonButton);

ButtonStyle confirmButtonStyle(ColorScheme colorScheme) => TextButton.styleFrom(
      foregroundColor: colorScheme.success.color,
    ).merge(commonButton);

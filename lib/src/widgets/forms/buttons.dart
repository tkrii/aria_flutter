part of '../../theme/scheme_theme.dart';

ButtonStyle _commonButton = ButtonStyle(
  shape: WidgetStatePropertyAll(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
);

OutlinedButtonThemeData _outlinedButtonThemeData(ColorScheme colorScheme) =>
    OutlinedButtonThemeData(
      style: ButtonStyle(
        side: WidgetStateProperty.resolveWith(
          (state) {
            if (state.contains(WidgetState.disabled)) {
              return BorderSide(
                color: colorScheme.disabled.scale(
                  alpha: -0.5,
                ),
              );
            }
            return BorderSide(
              color: colorScheme.primary.outerColor,
            );
          },
        ),
      ),
    );

ElevatedButtonThemeData _elevatedButtonThemeData(ColorScheme colorScheme) =>
    ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith(
          (state) => state.contains(WidgetState.disabled)
              ? colorScheme.disabled.scale(alpha: -0.5)
              : colorScheme.surfaceContainerLowest,
        ),
        side: WidgetStateProperty.resolveWith(
          (state) {
            if (state.contains(WidgetState.disabled)) {
              return const BorderSide(
                color: Colors.transparent,
              );
            }
            return BorderSide(
              color: colorScheme.outline,
            );
          },
        ),
      ).merge(_commonButton),
    );

FilledButtonThemeData _filledButtonThemeData(ColorScheme colorScheme) =>
    FilledButtonThemeData(
      style: ButtonStyle(
        side: WidgetStateProperty.resolveWith(
          (state) {
            if (state.contains(WidgetState.disabled)) {
              return const BorderSide(
                color: Colors.transparent,
              );
            }
            return BorderSide(
              color: colorScheme.outline,
            );
          },
        ),
      ).merge(_commonButton),
    );
TextButtonThemeData _textButtonThemeData = TextButtonThemeData(
  style: const ButtonStyle().merge(_commonButton),
);

FloatingActionButtonThemeData _floatingActionButtonThemeData(
  ColorScheme colorScheme,
) =>
    FloatingActionButtonThemeData(
      disabledElevation: 0,
      backgroundColor: WidgetStateColor.resolveWith(
        (state) => state.contains(WidgetState.disabled)
            ? Color.lerp(
                colorScheme.secondaryContainer,
                colorScheme.disabled,
                0.5,
              )!
            : colorScheme.secondaryContainer,
      ),
      foregroundColor: WidgetStateColor.resolveWith(
        (state) => state.contains(WidgetState.disabled)
            ? Color.lerp(
                colorScheme.onSecondaryContainer,
                colorScheme.disabled,
                0.5,
              )!
            : colorScheme.onSecondaryContainer,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26),
      ),
    );

ButtonStyle _cancelButtonStyle(ColorScheme colorScheme) => TextButton.styleFrom(
      foregroundColor: colorScheme.warning.color,
    ).merge(_commonButton);
ButtonStyle _confirmButtonStyle(ColorScheme colorScheme) =>
    TextButton.styleFrom(
      foregroundColor: colorScheme.success.color,
    ).merge(_commonButton);

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
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: colorScheme.outlineVariant,
            ),
          ),
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
      ).merge(_commonButton),
    );

FilledButtonThemeData _filledButtonThemeData = FilledButtonThemeData(
  style: const ButtonStyle().merge(_commonButton),
);
TextButtonThemeData _textButtonThemeData = TextButtonThemeData(
  style: const ButtonStyle().merge(_commonButton),
);

FloatingActionButtonThemeData _floatingActionButtonThemeData(
        ColorScheme colorScheme) =>
    FloatingActionButtonThemeData(
      backgroundColor: colorScheme.tertiary,
      foregroundColor: colorScheme.onTertiary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26),
      ),
    );
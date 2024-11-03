part of '../../theme/scheme_theme.dart';

MenuStyle menuStyle(ColorScheme colorScheme) => MenuStyle(
      backgroundColor: WidgetStateColor.resolveWith(
        (state) => state.contains(WidgetState.selected)
            ? colorScheme.surfaceDim
            : colorScheme.surfaceContainerHigh,
      ),
      side: WidgetStatePropertyAll(
        Utils.borderSide(colorScheme.outlineVariant),
      ),
    );

MenuThemeData menuThemeData(ColorScheme colorScheme) => MenuThemeData(
      style: MenuStyle(
        elevation: const WidgetStatePropertyAll(4),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: Utils.borderRadius,
          ),
        ),
      ).merge(
        menuStyle(
          colorScheme,
        ),
      ),
    );

MenuBarThemeData menuBarThemeData(ColorScheme colorScheme) => MenuBarThemeData(
      style: MenuStyle(
        elevation: const WidgetStatePropertyAll(0),
        backgroundColor: WidgetStatePropertyAll(
          colorScheme.surfaceContainer,
        ),
      ).merge(
        menuStyle(
          colorScheme,
        ),
      ),
    );

MenuButtonThemeData menuButtonThemeData = MenuButtonThemeData(
  style: const ButtonStyle().merge(commonButton),
);

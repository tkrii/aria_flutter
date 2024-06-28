part of '../../theme/scheme_theme.dart';

MenuStyle _menuStyle(ColorScheme colorScheme) => MenuStyle(
      backgroundColor: WidgetStateColor.resolveWith(
        (state) => state.contains(WidgetState.selected)
            ? colorScheme.surfaceContainerHighest
            : colorScheme.surfaceContainerHigh,
      ),
    );

MenuThemeData _menuThemeData(ColorScheme colorScheme) => MenuThemeData(
      style: MenuStyle(
        elevation: const WidgetStatePropertyAll(4),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            side: BorderSide(color: colorScheme.outline),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ).merge(
        _menuStyle(
          colorScheme,
        ),
      ),
    );

MenuBarThemeData _menuBarThemeData(ColorScheme colorScheme) => MenuBarThemeData(
      style: MenuStyle(
        elevation: const WidgetStatePropertyAll(0),
        backgroundColor: WidgetStatePropertyAll(
          colorScheme.surfaceContainerHigh,
        ),
      ).merge(
        _menuStyle(
          colorScheme,
        ),
      ),
    );

MenuButtonThemeData _menuButtonThemeData = MenuButtonThemeData(
  style: const ButtonStyle().merge(_commonButton),
);

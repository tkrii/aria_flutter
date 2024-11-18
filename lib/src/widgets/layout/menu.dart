part of '../../theme/create_theme.dart';

MenuStyle menuStyle(ColorScheme colorScheme) => MenuStyle(
      backgroundColor: WidgetStateColor.resolveWith(
        (state) => state.contains(WidgetState.selected)
            ? colorScheme.secondaryContainer
            : colorScheme.surfaceContainerHigh,
      ),
    );

MenuThemeData menuThemeData(ColorScheme colorScheme) => MenuThemeData(
      style: const MenuStyle(
        elevation: WidgetStatePropertyAll(4),
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

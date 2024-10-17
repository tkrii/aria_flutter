part of '../../theme/scheme_theme.dart';

PopupMenuThemeData _popupMenuThemeData(ColorScheme colorScheme) =>
    PopupMenuThemeData(
      color: colorScheme.isLight ? Colors.white : const Color(0xff383838),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: colorScheme.isDark
            ? BorderSide(
                color: colorScheme.outline,
              )
            : BorderSide.none,
      ),
    );

DropdownMenuThemeData _dropdownMenuThemeData(ColorScheme colorScheme) =>
    DropdownMenuThemeData(
      menuStyle: _menuStyle(colorScheme),
      inputDecorationTheme: _inputDecorationTheme(colorScheme),
    );

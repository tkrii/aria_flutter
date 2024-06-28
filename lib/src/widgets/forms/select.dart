part of '../../theme/scheme_theme.dart';

PopupMenuThemeData _popupMenuThemeData(ColorScheme colorScheme) =>
    PopupMenuThemeData(
      color: colorScheme.surfaceContainerHigh,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: colorScheme.outline,
        ),
      ),
    );

DropdownMenuThemeData _dropdownMenuThemeData(ColorScheme colorScheme) =>
    DropdownMenuThemeData(
      menuStyle: _menuStyle(colorScheme),
    );

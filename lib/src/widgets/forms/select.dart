part of '../../theme/create_theme.dart';

PopupMenuThemeData popupMenuThemeData(ColorScheme colorScheme) =>
    PopupMenuThemeData(
      color: colorScheme.surfaceContainerHigh,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Utils.thumbnailMediumBorder,
        ),
        side: Utils.borderSide(colorScheme.outlineVariant),
      ),
    );

DropdownMenuThemeData dropdownMenuThemeData(ColorScheme colorScheme) =>
    DropdownMenuThemeData(
      menuStyle: menuStyle(colorScheme),
      inputDecorationTheme: inputDecorationTheme(colorScheme),
    );

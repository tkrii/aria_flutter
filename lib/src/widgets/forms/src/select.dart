import 'package:aria/src/extensions/src/color.dart';
import 'package:aria/src/widgets/utils.dart';
import 'package:aria/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

PopupMenuThemeData popupMenuThemeData(ColorScheme colorScheme) =>
    PopupMenuThemeData(
      color: colorScheme.surfaceContainerHigh,
      shape: RoundedRectangleBorder(
        borderRadius: Utils.borderRadius,
        side: Utils.borderSide(
          colorScheme.outlineVariant.scale(
            alpha: -(1 / 3),
          ),
        ),
      ),
    );

DropdownMenuThemeData dropdownMenuThemeData(ColorScheme colorScheme) =>
    DropdownMenuThemeData(
      menuStyle: menuStyle(colorScheme),
      inputDecorationTheme: inputDecorationTheme(colorScheme),
    );

import 'package:aria/aria.dart';
import 'package:aria/src/widgets/utils.dart';
import 'package:aria/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

MenuStyle menuStyle(ColorScheme colorScheme) => MenuStyle(
      backgroundColor: WidgetStateColor.resolveWith(
        (state) => state.contains(WidgetState.selected)
            ? colorScheme.secondaryContainer
            : colorScheme.surfaceContainerHigh,
      ),
      side: WidgetStatePropertyAll(
        Utils.borderSide(
          colorScheme.outlineVariant.scale(
            alpha: -(1 / 3),
          ),
        ),
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

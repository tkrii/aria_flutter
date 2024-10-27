import 'package:aria/src/extensions/extensions.dart';
import 'package:aria/src/widgets/utils.dart';
import 'package:flutter/material.dart';

ButtonStyle commonButton = ButtonStyle(
  shape: WidgetStatePropertyAll(
    RoundedRectangleBorder(
      borderRadius: Utils.borderRadius,
    ),
  ),
);

OutlinedButtonThemeData outlinedButtonThemeData(ColorScheme colorScheme) =>
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
              color: colorScheme.primary,
            );
          },
        ),
      ),
    );

ElevatedButtonThemeData elevatedButtonThemeData(ColorScheme colorScheme) =>
    ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith(
          (state) => state.contains(WidgetState.disabled)
              ? colorScheme.disabled.scale(alpha: -0.8)
              : colorScheme.surfaceContainerLowest,
        ),
      ).merge(commonButton),
    );

FilledButtonThemeData filledButtonThemeData(ColorScheme colorScheme) =>
    FilledButtonThemeData(
      style: const ButtonStyle().merge(commonButton),
    );
TextButtonThemeData textButtonThemeData(ColorScheme colorScheme) =>
    TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.resolveWith(
          (state) => state.contains(WidgetState.disabled)
              ? colorScheme.accent.color.scale(alpha: -0.4)
              : colorScheme.accent.color,
        ),
      ).merge(commonButton),
    );

FloatingActionButtonThemeData floatingActionButtonThemeData(
  ColorScheme colorScheme,
) =>
    FloatingActionButtonThemeData(
      disabledElevation: 0,
      backgroundColor: WidgetStateColor.resolveWith(
        (state) => state.contains(WidgetState.disabled)
            ? colorScheme.primaryContainer.scale(alpha: -0.5)
            : colorScheme.primaryContainer,
      ),
      foregroundColor: WidgetStateColor.resolveWith(
        (state) => state.contains(WidgetState.disabled)
            ? Color.lerp(
                colorScheme.onPrimaryContainer,
                colorScheme.disabled,
                0.5,
              )!
            : colorScheme.onPrimaryContainer,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26),
      ),
    );

ButtonStyle cancelButtonStyle(ColorScheme colorScheme) => TextButton.styleFrom(
      foregroundColor: colorScheme.warning.color,
    ).merge(commonButton);

ButtonStyle confirmButtonStyle(ColorScheme colorScheme) => TextButton.styleFrom(
      foregroundColor: colorScheme.success.color,
    ).merge(commonButton);

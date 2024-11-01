import 'package:aria/src/extensions/src/color.dart';
import 'package:aria/src/extensions/src/color_scheme.dart';
import 'package:aria/src/widgets/utils.dart';
import 'package:flutter/material.dart';

DialogTheme dialogTheme(ColorScheme colorScheme) => DialogTheme(
      backgroundColor: colorScheme.surfaceContainerHigh,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: Utils.largeBorderRadius,
        side: Utils.borderSideOnlyDark(
          colorScheme.disabled.scale(alpha: -0.5),
          colorScheme.brightness,
        ),
      ),
      iconColor: colorScheme.primaryContainer,
      insetPadding: Utils.padding,
    );

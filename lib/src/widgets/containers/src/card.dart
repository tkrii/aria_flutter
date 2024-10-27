import 'package:aria/src/extensions/src/color.dart';
import 'package:aria/src/extensions/src/color_scheme.dart';
import 'package:aria/src/widgets/utils.dart';
import 'package:flutter/material.dart';

CardTheme cardTheme(ColorScheme colorScheme) => CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: Utils.mediumBorderRadius,
        side: Utils.borderSide(
          colorScheme.disabled.scale(alpha: -0.5),
        ),
      ),
    );

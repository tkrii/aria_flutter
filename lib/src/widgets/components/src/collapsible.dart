import 'package:aria/src/widgets/utils.dart';
import 'package:flutter/material.dart';

ExpansionTileThemeData expansionTileThemeData(
  ColorScheme colorScheme,
) =>
    ExpansionTileThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: Utils.mediumBorderRadius,
      ),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: Utils.mediumBorderRadius,
      ),
      backgroundColor: Color.lerp(
        colorScheme.surfaceContainerHigh,
        colorScheme.surfaceBright,
        0.5,
      ),
      collapsedBackgroundColor: Colors.transparent,
      collapsedIconColor: colorScheme.onSurface,
      iconColor: colorScheme.secondary,
      collapsedTextColor: colorScheme.onSurface,
      textColor: colorScheme.primary,
    );

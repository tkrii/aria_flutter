import 'package:aria/src/extensions/src/color_scheme.dart';
import 'package:flutter/material.dart';

MaterialBannerThemeData materialBannerThemeData(ColorScheme colorScheme) =>
    MaterialBannerThemeData(
      elevation: 0,
      backgroundColor: colorScheme.surfaceContainer,
      dividerColor: colorScheme.disabled,
    );

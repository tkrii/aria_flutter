import 'package:aria/src/widgets/utils.dart';
import 'package:flutter/material.dart';

CheckboxThemeData checkboxThemeData(ColorScheme colorScheme) =>
    CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: Utils.smallBorderRadius,
      ),
    );

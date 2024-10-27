import 'package:aria/src/widgets/utils.dart';
import 'package:flutter/material.dart';

SnackBarThemeData snackBarThemeData(ColorScheme colorScheme) {
  return SnackBarThemeData(
    backgroundColor: colorScheme.inverseSurface,
    actionTextColor: colorScheme.inversePrimary,
    elevation: 6,
    behavior: SnackBarBehavior.floating,
    dismissDirection: DismissDirection.down,
    shape: RoundedRectangleBorder(
      borderRadius: Utils.borderRadius,
    ),
  );
}

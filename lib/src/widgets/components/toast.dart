part of '../../theme/create_theme.dart';

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

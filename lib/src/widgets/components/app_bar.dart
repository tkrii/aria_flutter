part of '../../theme/scheme_theme.dart';

AppBarTheme _appBarTheme(ColorScheme colorScheme) => AppBarTheme(
      shape: Border(
        bottom: BorderSide(
          color: colorScheme.outline,
        ),
      ),
      elevation: 0,
      foregroundColor: colorScheme.onSurface,
      backgroundColor: colorScheme.surfaceContainerLow,
      centerTitle: true,
      systemOverlayStyle: colorScheme.isLight
          ? SystemUiOverlayStyle.light.copyWith(
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.transparent,
              systemNavigationBarColor: colorScheme.surfaceContainerHigh,
              systemNavigationBarDividerColor: colorScheme.outline,
              systemNavigationBarIconBrightness: colorScheme.brightness.inverse,
            )
          : SystemUiOverlayStyle.dark.copyWith(
              statusBarIconBrightness: Brightness.light,
              statusBarColor: Colors.transparent,
              systemNavigationBarColor: colorScheme.surfaceContainerHigh,
              systemNavigationBarDividerColor: colorScheme.outline,
              systemNavigationBarIconBrightness: colorScheme.brightness.inverse,
            ),
      titleTextStyle: createTextTheme(colorScheme.onSurface).titleLarge,
    );

part of '../../theme/scheme_theme.dart';

AppBarTheme _appBarTheme(ColorScheme colorScheme) => AppBarTheme(
      elevation: 0,
      foregroundColor: colorScheme.onSurface,
      scrolledUnderElevation: 0,
      backgroundColor: colorScheme.surface,
      centerTitle: true,
      systemOverlayStyle: colorScheme.isLight
          ? SystemUiOverlayStyle.light.copyWith(
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.transparent,
              systemNavigationBarColor: colorScheme.surfaceContainerHigh,
              systemNavigationBarIconBrightness: colorScheme.brightness.inverse,
            )
          : SystemUiOverlayStyle.dark.copyWith(
              statusBarIconBrightness: Brightness.light,
              statusBarColor: Colors.transparent,
              systemNavigationBarColor: colorScheme.surfaceContainerHigh,
              systemNavigationBarIconBrightness: colorScheme.brightness.inverse,
            ),
      titleTextStyle: createTextTheme(colorScheme.onSurface).titleLarge,
    );

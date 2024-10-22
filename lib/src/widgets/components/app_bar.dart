part of '../../theme/scheme_theme.dart';

AppBarTheme _appBarTheme(ColorScheme colorScheme) => AppBarTheme(
      foregroundColor: colorScheme.onSurface,
      backgroundColor: colorScheme.surface,
      elevation: 0,
      scrolledUnderElevation: 0,
      systemOverlayStyle: colorScheme.isLight
          ? SystemUiOverlayStyle.light.copyWith(
              statusBarIconBrightness: colorScheme.brightness.inverse,
              statusBarColor: Colors.transparent,
              systemNavigationBarColor: colorScheme.surfaceContainer,
              systemNavigationBarIconBrightness: colorScheme.brightness.inverse,
            )
          : SystemUiOverlayStyle.dark.copyWith(
              statusBarIconBrightness: colorScheme.brightness.inverse,
              statusBarColor: Colors.transparent,
              systemNavigationBarColor: colorScheme.surfaceContainer,
              systemNavigationBarIconBrightness: colorScheme.brightness.inverse,
            ),
      titleTextStyle: createTextTheme(colorScheme.onSurface).titleLarge,
    );

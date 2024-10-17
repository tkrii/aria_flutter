part of '../../theme/scheme_theme.dart';

AppBarTheme _appBarTheme(ColorScheme colorScheme) => AppBarTheme(
      elevation: 0,
      foregroundColor: colorScheme.onSurface,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
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

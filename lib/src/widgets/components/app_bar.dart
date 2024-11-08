part of '../../theme/create_theme.dart';

AppBarTheme appBarTheme(ColorScheme colorScheme) => AppBarTheme(
      foregroundColor: colorScheme.onSurface,
      color: colorScheme.surfaceContainer,
      shape: ContinuousRectangleBorder(
        side: Utils.borderSide(
          colorScheme.disabled,
          0.2,
        ),
      ),
      elevation: 0,
      scrolledUnderElevation: 0,
      systemOverlayStyle: (colorScheme.isLight
              ? SystemUiOverlayStyle.light
              : SystemUiOverlayStyle.dark)
          .copyWith(
        statusBarIconBrightness: colorScheme.brightness.inverse,
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: colorScheme.surfaceContainer,
        systemNavigationBarIconBrightness: colorScheme.brightness.inverse,
      ),
      titleTextStyle: createTextTheme(colorScheme.onSurface).titleLarge,
    );

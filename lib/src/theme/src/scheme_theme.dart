import 'package:aria/src/extensions/src/color_scheme.dart';
import 'package:aria/src/theme/src/text_theme.dart';
import 'package:aria/src/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Generate [ThemeData] from [colorScheme]
///
/// Using [createTextTheme] for this theme
ThemeData createAriaTheme(
  ColorScheme colorScheme,
) =>
    ThemeData(
      package: 'aria',
      colorScheme: colorScheme,
      useMaterial3: true,
      brightness: colorScheme.brightness,
      scaffoldBackgroundColor: colorScheme.surface,
      dividerColor: colorScheme.outline,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      dialogBackgroundColor: colorScheme.surfaceContainerHigh,
      applyElevationOverlayColor: colorScheme.isDark,
      textTheme: createTextTheme(colorScheme.onSurface),
      canvasColor: colorScheme.surfaceContainerLow,
      disabledColor: colorScheme.disabled,
      cupertinoOverrideTheme: CupertinoThemeData(
        primaryColor: colorScheme.primary,
        primaryContrastingColor: colorScheme.tertiary,
        barBackgroundColor: colorScheme.surfaceContainer,
        scaffoldBackgroundColor: colorScheme.surface,
        applyThemeToAll: true,
      ),
      appBarTheme: appBarTheme(colorScheme),
      bannerTheme: materialBannerThemeData(colorScheme),
      cardColor: colorScheme.surfaceContainerLow,
      cardTheme: cardTheme(colorScheme),
      listTileTheme: listTileThemeData(colorScheme),
      badgeTheme: badgeTheme(colorScheme),
      expansionTileTheme: expansionTileThemeData(colorScheme),
      progressIndicatorTheme: progressIndicatorThemeData(colorScheme),
      snackBarTheme: snackBarThemeData(colorScheme),
      bottomAppBarTheme: bottomAppBarTheme(colorScheme),
      bottomNavigationBarTheme: bottomNavigationTheme(colorScheme),
      navigationBarTheme: navigationBarTheme(colorScheme),
      drawerTheme: drawerTheme(colorScheme),
      navigationDrawerTheme: navigationDrawerTheme(colorScheme),
      tabBarTheme: tabBarTheme(colorScheme),
      navigationRailTheme: navigationRailThemeData(colorScheme),
      menuTheme: menuThemeData(colorScheme),
      menuBarTheme: menuBarThemeData(colorScheme),
      menuButtonTheme: menuButtonThemeData,
      sliderTheme: sliderThemeData(colorScheme),
      switchTheme: switchThemeData(colorScheme),
      checkboxTheme: checkboxThemeData(colorScheme),
      segmentedButtonTheme: segmentedButtonThemeData(colorScheme),
      toggleButtonsTheme: toggleButtonsThemeData(colorScheme),
      outlinedButtonTheme: outlinedButtonThemeData(colorScheme),
      elevatedButtonTheme: elevatedButtonThemeData(colorScheme),
      filledButtonTheme: filledButtonThemeData(colorScheme),
      textButtonTheme: textButtonThemeData(colorScheme),
      floatingActionButtonTheme: floatingActionButtonThemeData(colorScheme),
      popupMenuTheme: popupMenuThemeData(colorScheme),
      dropdownMenuTheme: dropdownMenuThemeData(colorScheme),
      inputDecorationTheme: inputDecorationTheme(colorScheme),
      actionIconTheme: ActionIconThemeData(
        backButtonIconBuilder: (context) =>
            const Icon(Icons.arrow_back_ios_new_rounded),
        closeButtonIconBuilder: (context) => const Icon(Icons.close_rounded),
        drawerButtonIconBuilder: (context) => const Icon(Icons.menu_rounded),
        endDrawerButtonIconBuilder: (context) => const Icon(Icons.menu_rounded),
      ),
      scrollbarTheme: scrollbarThemeData(colorScheme),
      searchBarTheme: searchBarThemeData(colorScheme),
      searchViewTheme: searchViewThemeData(colorScheme),
      bottomSheetTheme: bottomSheetThemeData(colorScheme),
      dialogTheme: dialogTheme(colorScheme),
      datePickerTheme: datePickerThemeData(colorScheme),
      timePickerTheme: timePickerThemeData(colorScheme),
    );

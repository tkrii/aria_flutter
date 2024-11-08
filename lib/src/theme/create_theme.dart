import 'package:aria/src/extensions/brightness.dart';
import 'package:aria/src/extensions/color.dart';
import 'package:aria/src/extensions/color_scheme.dart';
import 'package:aria/src/theme/create_text_theme.dart';
import 'package:flutter/cupertino.dart' show CupertinoThemeData;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show SystemUiOverlayStyle;

part '../widgets/components/app_bar.dart';
part '../widgets/components/banner.dart';
part '../widgets/components/collapsible.dart';
part '../widgets/components/divider_theme.dart';
part '../widgets/components/list_tile.dart';
part '../widgets/components/progress.dart';
part '../widgets/components/scroll_bar.dart';
part '../widgets/components/toast.dart';
part '../widgets/containers/card.dart';
part '../widgets/containers/date_picker.dart';
part '../widgets/containers/dialog.dart';
part '../widgets/containers/time_picker.dart';
part '../widgets/forms/badge.dart';
part '../widgets/forms/button_groups.dart';
part '../widgets/forms/buttons.dart';
part '../widgets/forms/checkbox.dart';
part '../widgets/forms/input.dart';
part '../widgets/forms/search.dart';
part '../widgets/forms/select.dart';
part '../widgets/forms/slider.dart';
part '../widgets/forms/switch.dart';
part '../widgets/layout/bottom_navigation.dart';
part '../widgets/layout/drawer_navigation.dart';
part '../widgets/layout/menu.dart';
part '../widgets/layout/tab_navigation.dart';
part '../widgets/utils.dart';

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
      dividerTheme: dividerTheme(colorScheme),
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

import 'package:aria/aria.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part '../widgets/components/app_bar.dart';
part '../widgets/components/banner.dart';
part '../widgets/components/collapsible.dart';
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

ThemeData createAriaTheme(
  ColorScheme colorScheme,
  TextTheme textTheme,
) =>
    ThemeData(
      package: 'aria',
      colorScheme: colorScheme,
      useMaterial3: true,
      brightness: colorScheme.brightness,
      scaffoldBackgroundColor: colorScheme.surface,
      dividerColor: colorScheme.outline,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      dialogBackgroundColor: colorScheme.surfaceContainer,
      applyElevationOverlayColor: colorScheme.isDark,
      textTheme: textTheme,
      canvasColor: colorScheme.surfaceContainerHighest,
      disabledColor: colorScheme.disabled,
      cupertinoOverrideTheme: CupertinoThemeData(
        primaryColor: colorScheme.primary,
        primaryContrastingColor: colorScheme.tertiary,
        barBackgroundColor: colorScheme.surfaceContainerHighest,
        scaffoldBackgroundColor: colorScheme.surface,
        applyThemeToAll: true,
      ),
      appBarTheme: _appBarTheme(colorScheme),
      bannerTheme: _materialBannerThemeData(colorScheme),
      cardColor: colorScheme.surfaceContainer,
      cardTheme: _cardTheme(colorScheme),
      listTileTheme: _listTileThemeData(colorScheme),
      badgeTheme: _badgeTheme(colorScheme),
      expansionTileTheme: _expansionTileThemeData(colorScheme),
      progressIndicatorTheme: _progressIndicatorThemeData(colorScheme),
      snackBarTheme: _snackBarThemeData(colorScheme),
      bottomAppBarTheme: _bottomAppBarTheme(colorScheme),
      bottomNavigationBarTheme: _bottomNavigationTheme(colorScheme),
      navigationBarTheme: _navigationBarTheme(colorScheme),
      drawerTheme: _drawerTheme(colorScheme),
      navigationDrawerTheme: _navigationDrawerTheme(colorScheme),
      tabBarTheme: _tabBarTheme(colorScheme),
      navigationRailTheme: _navigationRailThemeData(colorScheme),
      menuTheme: _menuThemeData(colorScheme),
      menuBarTheme: _menuBarThemeData(colorScheme),
      menuButtonTheme: _menuButtonThemeData,
      sliderTheme: _sliderThemeData(colorScheme),
      switchTheme: _switchThemeData(colorScheme),
      checkboxTheme: _checkboxThemeData(colorScheme),
      segmentedButtonTheme: _segmentedButtonThemeData(colorScheme),
      toggleButtonsTheme: _toggleButtonsThemeData(colorScheme),
      outlinedButtonTheme: _outlinedButtonThemeData(colorScheme),
      elevatedButtonTheme: _elevatedButtonThemeData(colorScheme),
      filledButtonTheme: _filledButtonThemeData(colorScheme),
      textButtonTheme: _textButtonThemeData,
      floatingActionButtonTheme: _floatingActionButtonThemeData(colorScheme),
      popupMenuTheme: _popupMenuThemeData(colorScheme),
      dropdownMenuTheme: _dropdownMenuThemeData(colorScheme),
      inputDecorationTheme: _inputDecorationTheme(colorScheme),
      actionIconTheme: ActionIconThemeData(
        backButtonIconBuilder: (_) =>
            const Icon(Icons.arrow_back_ios_new_rounded),
        closeButtonIconBuilder: (_) => const Icon(Icons.close_rounded),
        drawerButtonIconBuilder: (_) => const Icon(Icons.menu_rounded),
        endDrawerButtonIconBuilder: (_) => const Icon(Icons.menu_rounded),
      ),
      scrollbarTheme: _scrollbarThemeData(colorScheme),
      searchBarTheme: _searchBarThemeData(colorScheme),
      searchViewTheme: _searchViewThemeData(colorScheme),
      bottomSheetTheme: _bottomSheetThemeData(colorScheme),
      dialogTheme: _dialogTheme(colorScheme),
      datePickerTheme: _datePickerThemeData(colorScheme),
      timePickerTheme: _timePickerThemeData(colorScheme),
    );

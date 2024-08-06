import 'package:example/app/controllers/base_controller.dart';
import 'package:example/app/modules/views/hello_view.dart';
import 'package:example/app/modules/widgets_module/widgets/forms.dart';
import 'package:example/app/modules/widgets_module/widgets_sections.dart';
import 'package:example/app/modules/widgets_module/widgets_view.dart';
import 'package:example/core/i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class HomeNavigation {
  HomeNavigation(this.controller);

  final BaseController controller;
  List<
      (
        String,
        Widget,
        Widget?,
        Widget,
      )> get _screens => [
        (
          I18n.helloWorld,
          const PhosphorIcon(PhosphorIconsRegular.smiley),
          const PhosphorIcon(PhosphorIconsDuotone.smiley),
          HelloView(),
        ),
        (
          I18n.widgets,
          const PhosphorIcon(PhosphorIconsRegular.diamondsFour),
          const PhosphorIcon(PhosphorIconsDuotone.diamondsFour),
          WidgetsView(
            controller: controller,
            sections: sections,
          ),
        ),
        (
          I18n.typography,
          const PhosphorIcon(PhosphorIconsRegular.textAa),
          const PhosphorIcon(PhosphorIconsDuotone.textAa),
          //TypographyView(),
          Forms(),
        ),
        (
          I18n.helloWorld,
          const PhosphorIcon(PhosphorIconsRegular.smiley),
          const PhosphorIcon(PhosphorIconsDuotone.smiley),
          HelloView(),
        ),
        /*
    (
      LocaleKeys.hello,
      PhosphorIconsRegular.smiley,
      PhosphorIconsDuotone.smiley,
      const HelloView(),
    ),
    (
      LocaleKeys.widgets,
      PhosphorIconsRegular.diamondsFour,
      PhosphorIconsDuotone.diamondsFour,
      const WidgetsView(),
    ),
    (
      LocaleKeys.typography,
      PhosphorIconsRegular.textAa,
      PhosphorIconsDuotone.textAa,
      const TypographyView(),
    ),

     */
      ];

  Widget get screen => _screens[controller.homeIndexNavigation.value].$4;

  Widget bottomBar() => NavigationBar(
        selectedIndex: controller.homeIndexNavigation.value,
        onDestinationSelected: controller.changeNavigation,
        destinations: _screens
            .map(
              (screen) => NavigationDestination(
                icon: screen.$2,
                selectedIcon: screen.$3,
                label: screen.$1,
              ),
            )
            .toList(),
      );

  Widget sideBar({
    bool extended = false,
    NavigationRailLabelType labelType = NavigationRailLabelType.all,
  }) =>
      NavigationRail(
        selectedIndex: controller.homeIndexNavigation.value,
        onDestinationSelected: controller.changeNavigation,
        extended: extended,
        labelType: labelType,
        destinations: _screens
            .map(
              (screen) => NavigationRailDestination(
                icon: screen.$2,
                selectedIcon: screen.$3,
                label: Text(screen.$1),
              ),
            )
            .toList(),
      );

  Widget drawer() => NavigationDrawer(
        selectedIndex: controller.homeIndexNavigation.value,
        onDestinationSelected: controller.changeNavigation,
        children: _screens
            .map(
              (screen) => NavigationDrawerDestination(
                icon: screen.$2,
                selectedIcon: screen.$3,
                label: Text(screen.$1),
              ),
            )
            .toList(),
      );
}

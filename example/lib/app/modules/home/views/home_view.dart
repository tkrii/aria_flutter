import 'package:example/app/data/enums/adwaita_colors.dart';
import 'package:example/app/modules/home/controllers/home_controller.dart';
import 'package:example/app/modules/home/views/containers_view.dart';
import 'package:example/app/modules/home/views/controls_view.dart';
import 'package:example/app/modules/home/views/fonts_view.dart';
import 'package:example/app/modules/home/views/palette_view.dart';
import 'package:example/app/modules/home/views/text_fields_view.dart';
import 'package:example/generated/locales.g.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  final navigations = <({
    String label,
    IconData icon,
    IconData? selectedIcon,
    Widget child,
  })>[
    (
      label: LocaleKeys.app_navigation_fonts,
      icon: Icons.text_format_rounded,
      selectedIcon: null,
      child: const FontsView(),
    ),
    (
      label: LocaleKeys.app_navigation_controls,
      icon: Icons.radio_button_off_rounded,
      selectedIcon: Icons.radio_button_checked_rounded,
      child: const ControlsView(),
    ),
    (
      label: LocaleKeys.app_navigation_text_field,
      icon: Icons.text_fields_rounded,
      selectedIcon: null,
      child: const TextFieldsView(),
    ),
    (
      label: LocaleKeys.app_navigation_palette,
      icon: Icons.palette_outlined,
      selectedIcon: Icons.palette_rounded,
      child: const PaletteView(),
    ),
    (
      label: LocaleKeys.app_navigation_containers,
      icon: Icons.window_outlined,
      selectedIcon: Icons.window_rounded,
      child: const ContainersView(),
    ),
  ];

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.theme.colorScheme.surfaceContainer,
        title: Text(LocaleKeys.app_name.tr),
        actions: [
          Obx(
            () => Tooltip(
              message: LocaleKeys.app_material_theme_switch.tr,
              child: Switch(
                onChanged: controller.materialTheme,
                value: controller.materialTheme.value,
                thumbIcon: WidgetStateProperty.resolveWith(
                  (state) {
                    if (state.contains(WidgetState.selected)) {
                      return const Icon(Icons.android_rounded);
                    } else {
                      return const Icon(Icons.desktop_mac_rounded);
                    }
                  },
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () => controller.showBanner(context),
            icon: const Icon(Icons.info_outline_rounded),
          ),
          Obx(
            () {
              final icon = switch (controller.theme.value) {
                ThemeMode.dark => const Icon(Icons.dark_mode_rounded),
                ThemeMode.light => const Icon(Icons.light_mode_rounded),
                ThemeMode.system => GetPlatform.isDesktop
                    ? const Icon(Icons.desktop_windows_rounded)
                    : const Icon(Icons.phone_android_rounded),
              };
              return IconButton(
                onPressed: controller.onThemeChange,
                icon: icon,
              );
            },
          ),
          PopupMenuButton<AdwaitaColors>(
            itemBuilder: (context) => AdwaitaColors.values
                .map<PopupMenuEntry<AdwaitaColors>>(
                  (e) => PopupMenuItem(
                    value: e,
                    child: Row(
                      children: [
                        Icon(
                          Icons.circle_rounded,
                          color: e.accent,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text('app_colors_${e.name}'.tr),
                      ],
                    ),
                  ),
                )
                .toList(),
            icon: Icon(
              Icons.colorize_rounded,
              color: context.theme.colorScheme.primary,
            ),
            onSelected: (value) => controller.onColorChange(
              value.accent,
              context,
            ),
          ),
        ],
      ),
      drawer: Obx(
        () => NavigationDrawer(
          children: navigations
              .map(
                (e) => NavigationDrawerDestination(
                  icon: e == navigations.first
                      ? Badge(
                          label: const Text('123'),
                          child: Icon(e.icon),
                        )
                      : Icon(e.icon),
                  label: Text(e.label.tr),
                  selectedIcon: e == navigations.first
                      ? Badge(
                          label: const Text('123'),
                          child: Icon(e.selectedIcon ?? e.icon),
                        )
                      : Icon(e.selectedIcon ?? e.icon),
                ),
              )
              .toList(),
          selectedIndex: controller.navigation.value,
          onDestinationSelected: controller.navigation,
        ),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if ((context.isPhone && context.isLandscape) || (context.isTablet))
            Obx(
              () => NavigationRail(
                destinations: navigations
                    .map(
                      (e) => NavigationRailDestination(
                        icon: e == navigations.first
                            ? Badge(
                                label: const Text('123'),
                                child: Icon(e.icon),
                              )
                            : Icon(e.icon),
                        label: Text(e.label.tr),
                        selectedIcon: e == navigations.first
                            ? Badge(
                                label: const Text('123'),
                                child: Icon(e.selectedIcon ?? e.icon),
                              )
                            : Icon(e.selectedIcon ?? e.icon),
                      ),
                    )
                    .toList(),
                selectedIndex: controller.navigation.value,
                onDestinationSelected: controller.navigation,
              ),
            ),
          Expanded(
            child: Obx(
              () => navigations[controller.navigation.value].child,
            ),
          ),
        ],
      ),
      bottomNavigationBar: (context.isPhone && context.isPortrait)
          ? Obx(
              () => NavigationBar(
                destinations: navigations
                    .map(
                      (e) => NavigationDestination(
                        icon: e == navigations.first
                            ? Badge(
                                label: const Text('123'),
                                child: Icon(e.icon),
                              )
                            : Icon(e.icon),
                        label: e.label.tr,
                        selectedIcon: e == navigations.first
                            ? Badge(
                                label: const Text('123'),
                                child: Icon(e.selectedIcon ?? e.icon),
                              )
                            : Icon(e.selectedIcon ?? e.icon),
                      ),
                    )
                    .toList(),
                selectedIndex: controller.navigation.value,
                onDestinationSelected: controller.navigation,
              ),
            )
          : null,
    );
  }
}

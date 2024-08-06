import 'package:example/app/controllers/base_controller.dart';
import 'package:example/app/modules/home_module/home_navigation.dart';
import 'package:example/core/i18n/i18n.dart';
import 'package:example/core/values/elementary_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class HomeView extends GetResponsiveView<BaseController> {
  HomeView({super.key});

  HomeNavigation get navigation => HomeNavigation(controller);

  @override
  String? get tag => 'main';

  @override
  Widget? phone() {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Obx(
            () => PopupMenuButton<ElementaryColors>(
              initialValue: controller.color.value,
              itemBuilder: (context) => ElementaryColors.values
                  .map(
                    (ec) => PopupMenuItem<ElementaryColors>(
                      value: ec,
                      child: ListTile(
                        leading: ec == controller.color.value
                            ? PhosphorIcon(
                                PhosphorIconsFill.checkCircle,
                                color: ec.color,
                              )
                            : PhosphorIcon(
                                PhosphorIconsDuotone.circle,
                                color: ec.color,
                              ),
                        title: Text('color_${ec.name}'.tr),
                      ),
                    ),
                  )
                  .toList(),
              icon: PhosphorIcon(
                PhosphorIconsFill.paintBrushBroad,
                color: screen.context.theme.colorScheme.primary,
              ),
              onSelected: controller.changeColor,
            ),
          ),
          IconButton(
            tooltip: I18n.theme,
            onPressed: () {
              Get.changeThemeMode(
                screen.context.isDarkMode ? ThemeMode.light : ThemeMode.dark,
              );
            },
            icon: screen.context.isDarkMode
                ? const PhosphorIcon(PhosphorIconsFill.sun)
                : const PhosphorIcon(PhosphorIconsFill.moon),
          ),
          IconButton(
            tooltip: I18n.about,
            onPressed: () => Get.dialog(
              const AboutDialog(
                applicationIcon: FlutterLogo(),
                applicationName: 'Aria gallery',
                applicationVersion: '1.0.0+1',
              ),
            ),
            icon: const PhosphorIcon(PhosphorIconsFill.info),
          ),
        ],
      ),
      drawer: Obx(
        () => navigation.drawer(),
      ),
      body: Row(
        children: [
          if (screen.context.isLandscape)
            Obx(
              () => navigation.sideBar(),
            ),
          Expanded(
            child: Obx(
              () => navigation.screen,
            ),
          ),
        ],
      ),
      bottomNavigationBar: screen.context.isPortrait
          ? Obx(
              () => navigation.bottomBar(),
            )
          : null,
    );
  }
}

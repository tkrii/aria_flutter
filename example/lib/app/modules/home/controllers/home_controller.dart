import 'package:aria/aria.dart';
import 'package:example/app/data/enums/adwaita_colors.dart';
import 'package:example/generated/locales.g.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final navigation = RxInt(0);
  final theme = Rx(ThemeMode.system);
  final material = Get.find<GetMaterialController>();

  @override
  void onClose() {
    ScaffoldMessenger.of(Get.context!).clearMaterialBanners();
    super.onClose();
  }

  void onThemeChange() {
    if (theme.value.index == ThemeMode.values.length - 1) {
      theme(
        ThemeMode.values[0],
      );
    } else {
      theme(
        ThemeMode.values[theme.value.index + 1],
      );
    }
    material.setThemeMode(theme.value);
  }

  void onColorChange(AdwaitaColors value, BuildContext context) {
    material
      ..setTheme(
        value.accent.toAriaTheme().dark(),
      )
      ..setTheme(
        value.accent.toAriaTheme().light(),
      );
  }

  void showBanner(BuildContext context) {
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: Text(LocaleKeys.app_description.tr),
        actions: [
          TextButton(
            onPressed: ScaffoldMessenger.of(context).clearMaterialBanners,
            child: Text(MaterialLocalizations.of(context).closeButtonLabel),
            style: TextButton.styleFrom(
              foregroundColor: context.theme.colorScheme.destructive.color,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:aria/aria.dart';
import 'package:example/generated/locales.g.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final material = Get.find<GetMaterialController>();
  final navigation = RxInt(0);
  final theme = Rx(ThemeMode.system);
  final materialTheme = RxBool(true);

  AriaTheme _ariaTheme = const AriaTheme();

  @override
  void onInit() {
    ever(
      materialTheme,
      (_) => onColorChange(
        null,
        Get.context!,
      ),
    );
    super.onInit();
  }

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

  void onColorChange(Color? value, BuildContext context) {
    if (value != null) {
      _ariaTheme = AriaTheme(
        primary: value,
      );
    }

    if (materialTheme.value) {
      material
        ..setTheme(
          _ariaTheme.dark(),
        )
        ..setTheme(
          _ariaTheme.light(),
        );
      return;
    } else {
      material
        ..setTheme(
          _ariaTheme.adwaitaDark(),
        )
        ..setTheme(
          _ariaTheme.adwaitaLight(),
        );
      return;
    }
  }

  void showBanner(BuildContext context) {
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: materialTheme.value
            ? Text(LocaleKeys.app_description.tr)
            : Text(LocaleKeys.app_adwaita_description.tr),
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

import 'package:example/core/values/elementary_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseController extends GetxController {
  static BaseController get main => Get.find(tag: 'main');
  RxInt homeIndexNavigation = RxInt(0);
  RxInt widgetsSections = RxInt(0);
  RxInt helloCounter = RxInt(0);
  Rx<ElementaryColors> color = Rx(
    ElementaryColors.values[0],
  );

  SearchController searchController = SearchController();

  changeNavigation(int? value) {
    homeIndexNavigation.value = value ?? 0;
  }

  changeColor(ElementaryColors ec) {
    color.value = ec;
    update();
  }

  counterIncrement() => helloCounter++;

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
}

class BaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BaseController>(
      BaseController(),
      tag: 'main',
    );
  }
}

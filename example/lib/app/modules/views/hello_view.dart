import 'package:example/app/controllers/base_controller.dart';
import 'package:example/core/i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class HelloView extends Scaffold {
  HelloView({
    super.key,
  }) : super(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(I18n.buttonPushed),
                Obx(
                  () => Text(
                    BaseController.main.helloCounter.value.toString(),
                    style: Get.context?.textTheme.headlineLarge,
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: BaseController.main.counterIncrement,
            tooltip: I18n.add,
            child: const PhosphorIcon(PhosphorIconsRegular.plus),
          ),
        );
}
/*
class HelloView extends StatelessWidget {
  const HelloView({super.key});

  @override
  Widget build(BuildContext context) {
    RxInt helloPushedButton = RxInt(0);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Obx(
                  () => Text(
                    LocaleKeys.buttonPushed.trArgs(
                      [
                        helloPushedButton.value.toString(),
                      ],
                    ),
                  ).paddingAll(16),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => helloPushedButton++,
        child: const PhosphorIcon(PhosphorIconsRegular.handTap),
      ),
    );
  }
}


 */

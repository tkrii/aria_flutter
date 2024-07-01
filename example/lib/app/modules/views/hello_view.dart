import 'package:example/core/i18n/i18n.dart';
import 'package:flutter/material.dart';

class HelloView extends Scaffold {
  HelloView({
    super.key,
  }) : super(
          appBar: AppBar(
            title: Text(I18n.helloTitle),
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

import 'package:example/generated/locales.g.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainersView extends StatelessWidget {
  const ContainersView({super.key});
  @override
  Widget build(BuildContext context) {
    final obxSwitch = RxBool(false);
    final obxElevation = RxDouble(2.0);

    final child = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ObxValue<RxDouble>(
          (data) => Card(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                minHeight: 120,
              ),
              child: Center(
                child: Text(LocaleKeys.app_containers_card.tr),
              ),
            ),
            elevation: data.value,
          ),
          obxElevation,
        ),
        ObxValue<RxDouble>(
          (data) => Row(
            children: [
              Text(
                data.value.toStringAsPrecision(3),
              ).paddingOnly(left: 16),
              Expanded(
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 600,
                  ),
                  child: Center(
                    child: Slider.adaptive(
                      value: data.value,
                      onChanged: data,
                      max: 10.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          obxElevation,
        ),
        Card.outlined(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 120,
            ),
            child: Center(
              child: Text(LocaleKeys.app_containers_border.tr),
            ),
          ),
        ).paddingAll(8),
        ...List.generate(
          4,
          (index) {
            const icons = [
              Icon(Icons.contacts_rounded),
              Icon(Icons.store_rounded),
              Icon(Icons.map_rounded),
              Icon(Icons.calendar_month_rounded),
            ];
            return ListTile(
              leading: icons[index],
              title: Text(
                LocaleKeys.app_containers_list_lite_title.trArgs(
                  [
                    (index + 1).toString(),
                  ],
                ),
              ),
              subtitle: Text(LocaleKeys.app_containers_subtitle.tr),
              trailing: Text(LocaleKeys.app_containers_trailing.tr),
            );
          },
        ),
      ],
    );
    return ListView(
      children: [
        ObxValue<RxBool>(
          (data) => SwitchListTile.adaptive(
            value: data.value,
            onChanged: data,
            title: Text(LocaleKeys.app_containers_show_in_dialog.tr),
          ),
          obxSwitch,
        ),
        const Divider(),
        ObxValue<RxBool>(
          (data) => data.value
              ? Dialog(
                  child: child.paddingAll(24),
                )
              : child,
          obxSwitch,
        ),
      ],
    );
  }
}

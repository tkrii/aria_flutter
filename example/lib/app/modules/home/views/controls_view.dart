import 'package:example/app/modules/home/views/buttons_controls_view.dart';
import 'package:example/generated/locales.g.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControlsView extends StatelessWidget {
  const ControlsView({super.key});
  @override
  Widget build(BuildContext context) {
    final slider = RxDouble(1.0);

    void showSnackbar() {
      ScaffoldMessenger.of(Get.context!).showSnackBar(
        const SnackBar(
          content: Text('lorem ipsum dolor sit amet'),
        ),
      );
    }

    const labels = [
      LocaleKeys.app_controls_labels_buttons,
      LocaleKeys.app_controls_labels_fabs,
      LocaleKeys.app_controls_labels_toggles,
      LocaleKeys.app_controls_labels_chips,
      LocaleKeys.app_controls_labels_progress,
    ];

    final buttonsChild = [
      TextButton(
        onPressed: showSnackbar,
        child: Text(LocaleKeys.app_controls_buttons_text.tr),
      ),
      TextButton(
        onPressed: null,
        child: Text(LocaleKeys.app_controls_buttons_text.tr),
      ),
      OutlinedButton(
        onPressed: showSnackbar,
        child: Text(LocaleKeys.app_controls_buttons_outlined.tr),
      ),
      OutlinedButton(
        onPressed: null,
        child: Text(LocaleKeys.app_controls_buttons_outlined.tr),
      ),
      ElevatedButton(
        onPressed: showSnackbar,
        child: Text(LocaleKeys.app_controls_buttons_elevated.tr),
      ),
      ElevatedButton(
        onPressed: null,
        child: Text(LocaleKeys.app_controls_buttons_elevated.tr),
      ),
      FilledButton(
        onPressed: showSnackbar,
        child: Text(LocaleKeys.app_controls_buttons_filled.tr),
      ),
      FilledButton(
        onPressed: null,
        child: Text(LocaleKeys.app_controls_buttons_filled.tr),
      ),
      FilledButton.tonal(
        onPressed: showSnackbar,
        child: Text(LocaleKeys.app_controls_buttons_filled.tr),
      ),
      FilledButton.tonal(
        onPressed: null,
        child: Text(LocaleKeys.app_controls_buttons_filled.tr),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.notifications_rounded),
        tooltip: LocaleKeys.app_controls_buttons_icon.tr,
      ),
      IconButton(
        onPressed: null,
        icon: const Icon(Icons.notifications_rounded),
        tooltip: LocaleKeys.app_controls_buttons_icon.tr,
      ),
      IconButton.outlined(
        onPressed: () {},
        icon: const Icon(Icons.notifications_rounded),
        tooltip: LocaleKeys.app_controls_buttons_icon.tr,
      ),
      IconButton.outlined(
        onPressed: null,
        icon: const Icon(Icons.notifications_rounded),
        tooltip: LocaleKeys.app_controls_buttons_icon.tr,
      ),
      IconButton.filled(
        onPressed: () {},
        icon: const Icon(Icons.notifications_rounded),
        tooltip: LocaleKeys.app_controls_buttons_icon.tr,
      ),
      IconButton.filled(
        onPressed: null,
        icon: const Icon(Icons.notifications_rounded),
        tooltip: LocaleKeys.app_controls_buttons_icon.tr,
      ),
      IconButton.filledTonal(
        onPressed: () {},
        icon: const Icon(Icons.notifications_rounded),
        tooltip: LocaleKeys.app_controls_buttons_icon.tr,
      ),
      IconButton.filledTonal(
        onPressed: null,
        icon: const Icon(Icons.notifications_rounded),
        tooltip: LocaleKeys.app_controls_buttons_icon.tr,
      ),
    ];

    final fabs = [
      FloatingActionButton(
        onPressed: showSnackbar,
        child: const Icon(Icons.star_rate_rounded),
      ),
      const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.star_rate_rounded),
      ),
      FloatingActionButton.extended(
        onPressed: showSnackbar,
        icon: const Icon(Icons.star_rate_rounded),
        label: Text(LocaleKeys.app_controls_labels_fabs.tr),
      ),
      FloatingActionButton.extended(
        onPressed: null,
        icon: const Icon(Icons.star_rate_rounded),
        label: Text(LocaleKeys.app_controls_labels_fabs.tr),
      ),
      FloatingActionButton.small(
        onPressed: showSnackbar,
        child: const Icon(Icons.star_rate_rounded),
      ),
      const FloatingActionButton.small(
        onPressed: null,
        child: Icon(Icons.star_rate_rounded),
      ),
      FloatingActionButton.large(
        onPressed: showSnackbar,
        child: const Icon(Icons.star_rate_rounded),
      ),
      const FloatingActionButton.large(
        onPressed: null,
        child: Icon(Icons.star_rate_rounded),
      ),
    ];

    final toggleButtons = [
      ToggleButtons(
        onPressed: (_) {},
        children: const [
          Text('1'),
          Text('2'),
          Text('3'),
        ],
        isSelected: const [
          true,
          false,
          false,
        ],
      ),
      ToggleButtons(
        children: const [
          Text('1'),
          Text('2'),
          Text('3'),
        ],
        isSelected: const [
          true,
          false,
          false,
        ],
      ),
      SegmentedButton<int>(
        segments: const [
          ButtonSegment(
            value: 1,
            label: Text('1'),
          ),
          ButtonSegment(
            value: 2,
            label: Text('2'),
          ),
          ButtonSegment(
            value: 3,
            label: Text('3'),
          ),
        ],
        selected: const {1},
        onSelectionChanged: (_) {},
      ),
      SegmentedButton<int>(
        segments: const [
          ButtonSegment(
            value: 1,
            label: Text('1'),
          ),
          ButtonSegment(
            value: 2,
            label: Text('2'),
          ),
          ButtonSegment(
            value: 3,
            label: Text('3'),
          ),
        ],
        selected: const {1},
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Checkbox.adaptive(
            value: true,
            onChanged: (_) {},
          ),
          Checkbox.adaptive(
            value: false,
            onChanged: (_) {},
          ),
        ],
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Checkbox.adaptive(
            value: true,
            onChanged: null,
          ),
          Checkbox.adaptive(
            value: false,
            onChanged: null,
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Radio.adaptive(
            groupValue: true,
            value: true,
            onChanged: (_) {},
          ),
          Radio.adaptive(
            groupValue: true,
            value: false,
            onChanged: (_) {},
          ),
        ],
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Radio.adaptive(
            groupValue: true,
            value: true,
            onChanged: null,
          ),
          Radio.adaptive(
            groupValue: true,
            value: false,
            onChanged: null,
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Switch.adaptive(
            value: true,
            onChanged: (_) {},
          ),
          Switch.adaptive(
            value: false,
            onChanged: (_) {},
          ),
        ],
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Switch.adaptive(
            value: true,
            onChanged: null,
          ),
          Switch.adaptive(
            value: false,
            onChanged: null,
          ),
        ],
      ),
    ];

    final chips = [
      Chip(
        label: Text(LocaleKeys.app_controls_labels_chip.tr),
      ),
      Chip(
        onDeleted: () {},
        label: Text(LocaleKeys.app_controls_chips_deletable.tr),
      ),
      ChoiceChip(
        label: Text(LocaleKeys.app_controls_labels_chip.tr),
        selected: false,
        onSelected: (_) {},
      ),
      ChoiceChip(
        label: Text(LocaleKeys.app_controls_chips_disabled.tr),
        selected: false,
      ),
      ChoiceChip(
        label: Text(LocaleKeys.app_controls_chips_selected.tr),
        selected: true,
        onSelected: (_) {},
      ),
      ChoiceChip(
        label: Text(LocaleKeys.app_controls_chips_selected_and_disabled.tr),
        selected: true,
      ),
    ];

    return DefaultTabController(
      length: labels.length,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            tabs: labels
                .map(
                  (e) => Tab(
                    child: Text(e.tr),
                  ),
                )
                .toList(),
          ),
          Expanded(
            child: TabBarView(
              children: [
                ButtonsControlsView(children: buttonsChild),
                ButtonsControlsView(
                  children: fabs,
                  extent: 80,
                ),
                ButtonsControlsView(children: toggleButtons),
                ButtonsControlsView(children: chips),
                ObxValue(
                  (data) => ListView(
                    children: [
                      Slider(
                        value: data.value,
                        onChanged: data,
                      ),
                      const Divider(),
                      LinearProgressIndicator(
                        value: data.value,
                      ).paddingAll(10),
                      Container(
                        child: Center(
                          child: CircularProgressIndicator.adaptive(
                            value: data.value,
                          ),
                        ).paddingAll(10),
                      ),
                      const LinearProgressIndicator().paddingAll(10),
                      Container(
                        child: const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ).paddingAll(10),
                      ),
                    ],
                  ),
                  slider,
                ).paddingSymmetric(horizontal: 32),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

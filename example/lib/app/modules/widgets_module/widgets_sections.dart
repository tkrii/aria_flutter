import 'package:example/app/modules/widgets_module/widgets/forms.dart';
import 'package:example/core/i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'widgets/buttons.dart';

List<(Tab, Widget)> sections = [
  (
    Tab(
      icon: const PhosphorIcon(PhosphorIconsDuotone.handTap),
      text: I18n.buttons,
    ),
    Buttons(),
  ),
  (
    Tab(
      icon: const PhosphorIcon(PhosphorIconsDuotone.clipboard),
      text: I18n.forms,
    ),
    Forms(),
  ),
  (
    const Tab(
      icon: PhosphorIcon(PhosphorIconsDuotone.textbox),
    ),
    Buttons(),
  ),
  (
    const Tab(
      icon: PhosphorIcon(PhosphorIconsDuotone.phone),
    ),
    Buttons(),
  ),
  (
    const Tab(
      icon: PhosphorIcon(PhosphorIconsDuotone.calendar),
    ),
    Buttons(),
  ),
];
/*
        const Buttons().paddingAll(8),
        //const Divider(),
        const SegmentedControl().paddingAll(8),
        //const Divider(),
        const CheckBoxes().paddingAll(8),
        //const Divider(),
        const Radios().paddingAll(8),
        //const Divider(),
        const Switches().paddingAll(8),
        //const Divider(),
        const ListTiles().paddingAll(8),
        //const Divider(),
        const Sliders().paddingAll(8),
        //const Divider(),
        const Indicators().paddingAll(8),
        //const Divider(),
        const TextBox().paddingAll(8),
        //const Divider(),
        const Banners().paddingAll(8),
        //const Divider(),
        const Pickers().paddingAll(8),
        //const Divider(),
        */
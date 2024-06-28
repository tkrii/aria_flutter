import 'package:example/core/i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class TextBox extends StatelessWidget {
  const TextBox({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: const PhosphorIcon(PhosphorIconsRegular.textbox),
      title: Text(LocaleKeys.textField.tr),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'hello'.tr,
              hintText: 'hello'.tr,
            ),
            maxLength: 100,
            maxLines: null,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'hello'.tr,
              hintText: 'hello'.tr,
            ),
            enabled: false,
            maxLength: 100,
            maxLines: null,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            autovalidateMode: AutovalidateMode.always,
            validator: (value) =>
                value == null || value.isEmpty ? 'empty'.tr : null,
            decoration: InputDecoration(
              labelText: 'hello'.tr,
              hintText: 'hello'.tr,
            ),
            maxLines: null,
          ),
        ),
      ],
    );
  }
}

import 'package:example/generated/locales.g.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldsView extends StatelessWidget {
  const TextFieldsView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            Expanded(
              child: FilledButton(
                onPressed: () {},
                child: Text(
                  LocaleKeys.app_controls_buttons_filled.tr,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ).paddingSymmetric(horizontal: 8),
            ),
            Expanded(
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  LocaleKeys.app_controls_buttons_outlined.tr,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ).paddingSymmetric(horizontal: 8),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  labelText: LocaleKeys.app_text_fields_username.tr,
                ),
              ).paddingSymmetric(horizontal: 8),
            ),
          ],
        ).paddingAll(8),
        TextField(
          enabled: false,
          decoration: InputDecoration(
            labelText: LocaleKeys.app_text_fields_disabled.tr,
          ),
        ).paddingSymmetric(
          vertical: 8,
          horizontal: 16,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: LocaleKeys.app_text_fields_password.tr,
          ),
          obscureText: true,
        ).paddingSymmetric(
          vertical: 8,
          horizontal: 16,
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.always,
          validator: (_) => LocaleKeys.app_text_fields_wrong.tr,
        ).paddingSymmetric(
          vertical: 8,
          horizontal: 16,
        ),
        TextField(
          maxLines: 5,
          controller: TextEditingController(
            text:
                'Minim in nostrud do minim nulla adipisicing labore aliquip dolor. Lorem nisi esse ut incididunt dolore excepteur et quis deserunt aute reprehenderit ex. Aute nisi nostrud qui excepteur Lorem laboris aliquip laborum aute quis Lorem ad. Id esse laboris fugiat sit aute aute.',
          ),
        ).paddingSymmetric(
          vertical: 8,
          horizontal: 16,
        ),
        DropdownMenu<int>(
          dropdownMenuEntries: [1, 2, 3]
              .map(
                (e) => DropdownMenuEntry<int>(
                  value: e,
                  label: e.toString(),
                ),
              )
              .toList(),
        ).paddingSymmetric(
          vertical: 8,
          horizontal: 16,
        ),
      ],
    );
  }
}

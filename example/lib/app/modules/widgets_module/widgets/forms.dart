import 'package:example/app/widgets/section_part.dart';
import 'package:example/core/i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Forms extends SafeArea {
  Forms({super.key})
      : super(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SectionPart(
                  title: Text(I18n.checkBox),
                  leading: const PhosphorIcon(PhosphorIconsDuotone.checkSquare),
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (_) {},
                    ),
                    Checkbox(
                      value: null,
                      tristate: true,
                      onChanged: (_) {},
                    ),
                    Checkbox(
                      value: false,
                      onChanged: (_) {},
                    ),
                    const Checkbox(
                      value: true,
                      onChanged: null,
                    ),
                    const Checkbox(
                      value: null,
                      tristate: true,
                      onChanged: null,
                    ),
                    const Checkbox(
                      value: false,
                      onChanged: null,
                    ),
                    CheckboxListTile(
                      title: Text(I18n.first),
                      value: true,
                      onChanged: (_) {},
                    ),
                    CheckboxListTile(
                      title: Text(I18n.second),
                      value: null,
                      tristate: true,
                      onChanged: (_) {},
                    ),
                    CheckboxListTile(
                      title: Text(I18n.third),
                      value: false,
                      onChanged: (_) {},
                    ),
                  ],
                ),
                SectionPart(
                  title: Text(I18n.radio),
                  leading: const PhosphorIcon(PhosphorIconsDuotone.radioButton),
                  children: [
                    Radio<bool>(
                      value: true,
                      groupValue: true,
                      onChanged: (_) {},
                    ),
                    Radio<bool>(
                      value: false,
                      groupValue: true,
                      onChanged: (_) {},
                    ),
                    const Radio<bool>(
                      value: true,
                      groupValue: true,
                      onChanged: null,
                    ),
                    const Radio<bool>(
                      value: false,
                      groupValue: true,
                      onChanged: null,
                    ),
                    RadioListTile<bool>(
                      title: Text(I18n.first),
                      value: true,
                      groupValue: true,
                      onChanged: (_) {},
                    ),
                    RadioListTile<bool>(
                      title: Text(I18n.second),
                      value: false,
                      groupValue: true,
                      onChanged: (_) {},
                    ),
                  ],
                ),
                SectionPart(
                  title: Text(I18n.select),
                  leading: const PhosphorIcon(PhosphorIconsDuotone.caretUpDown),
                  children: [
                    DropdownButton<String>(
                      value: I18n.first,
                      items: <DropdownMenuItem<String>>[
                        DropdownMenuItem(
                          value: I18n.first,
                          child: Text(I18n.first),
                        ),
                        DropdownMenuItem(
                          value: I18n.second,
                          child: Text(I18n.second),
                        ),
                        DropdownMenuItem(
                          value: I18n.third,
                          child: Text(I18n.third),
                        ),
                      ],
                      onChanged: (_) {},
                    ),
                    DropdownButton<String>(
                      value: I18n.first,
                      items: <DropdownMenuItem<String>>[
                        DropdownMenuItem(
                          value: I18n.first,
                          child: Text(I18n.first),
                        ),
                      ],
                      onChanged: null,
                    ),
                    DropdownMenu<String>(
                      initialSelection: I18n.first,
                      dropdownMenuEntries: [
                        DropdownMenuEntry<String>(
                          value: I18n.first,
                          label: I18n.first,
                        ),
                        DropdownMenuEntry<String>(
                          value: I18n.second,
                          label: I18n.second,
                        ),
                        DropdownMenuEntry<String>(
                          value: I18n.third,
                          label: I18n.third,
                        ),
                      ],
                    ),
                    DropdownMenu<String>(
                      initialSelection: I18n.first,
                      enabled: false,
                      dropdownMenuEntries: [
                        DropdownMenuEntry<String>(
                          value: I18n.first,
                          label: I18n.first,
                        ),
                        DropdownMenuEntry<String>(
                          value: I18n.second,
                          label: I18n.second,
                        ),
                        DropdownMenuEntry<String>(
                          value: I18n.third,
                          label: I18n.third,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
}

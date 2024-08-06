import 'package:example/app/widgets/section_part.dart';
import 'package:example/core/i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Buttons extends SafeArea {
  Buttons({super.key})
      : super(
          child: SingleChildScrollView(
            child: Column(
              children: [
                /// TextButton
                SectionPart(
                  title: const Text('TextButton'),
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(I18n.button),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const PhosphorIcon(PhosphorIconsLight.star),
                      label: Text(I18n.button),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text(I18n.button),
                    ),
                    TextButton.icon(
                      onPressed: null,
                      icon: const PhosphorIcon(PhosphorIconsLight.star),
                      label: Text(I18n.button),
                    ),
                  ],
                ),

                /// OutlineButton
                SectionPart(
                  title: const Text('OutlineButton'),
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(I18n.button),
                    ),
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: const PhosphorIcon(PhosphorIconsLight.star),
                      label: Text(I18n.button),
                    ),
                    OutlinedButton(
                      onPressed: null,
                      child: Text(I18n.button),
                    ),
                    OutlinedButton.icon(
                      onPressed: null,
                      icon: const PhosphorIcon(PhosphorIconsLight.star),
                      label: Text(I18n.button),
                    ),
                  ],
                ),

                /// ElevatedButton
                SectionPart(
                  title: const Text('ElevatedButton'),
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(I18n.button),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const PhosphorIcon(PhosphorIconsLight.star),
                      label: Text(I18n.button),
                    ),
                    ElevatedButton(
                      onPressed: null,
                      child: Text(I18n.button),
                    ),
                    ElevatedButton.icon(
                      onPressed: null,
                      icon: const PhosphorIcon(PhosphorIconsLight.star),
                      label: Text(I18n.button),
                    ),
                  ],
                ),

                /// FilledButton
                SectionPart(
                  title: const Text('FilledButton'),
                  children: [
                    FilledButton(
                      onPressed: () {},
                      child: Text(I18n.button),
                    ),
                    FilledButton.icon(
                      onPressed: () {},
                      icon: const PhosphorIcon(PhosphorIconsLight.star),
                      label: Text(I18n.button),
                    ),
                    FilledButton.tonal(
                      onPressed: () {},
                      child: Text(I18n.button),
                    ),
                    FilledButton.tonalIcon(
                      onPressed: () {},
                      icon: const PhosphorIcon(PhosphorIconsLight.star),
                      label: Text(I18n.button),
                    ),
                    FilledButton(
                      onPressed: null,
                      child: Text(I18n.button),
                    ),
                    FilledButton.icon(
                      onPressed: null,
                      icon: const PhosphorIcon(PhosphorIconsLight.star),
                      label: Text(I18n.button),
                    ),
                  ],
                ),

                /// FloatingActionButton
                SectionPart(
                  title: const Text('FloatingActionButton'),
                  children: [
                    FloatingActionButton.small(
                      onPressed: () {},
                      tooltip: I18n.button,
                      child: const PhosphorIcon(PhosphorIconsLight.star),
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      tooltip: I18n.button,
                      child: const PhosphorIcon(PhosphorIconsLight.star),
                    ),
                    FloatingActionButton.extended(
                      onPressed: () {},
                      label: Text(I18n.button),
                      icon: const PhosphorIcon(PhosphorIconsLight.star),
                    ),
                    FloatingActionButton.large(
                      onPressed: () {},
                      tooltip: I18n.button,
                      child: const PhosphorIcon(PhosphorIconsLight.star),
                    ),
                    FloatingActionButton.small(
                      onPressed: null,
                      tooltip: I18n.button,
                      child: const PhosphorIcon(PhosphorIconsLight.star),
                    ),
                    FloatingActionButton(
                      onPressed: null,
                      tooltip: I18n.button,
                      child: const PhosphorIcon(PhosphorIconsLight.star),
                    ),
                    FloatingActionButton.extended(
                      onPressed: null,
                      label: Text(I18n.button),
                      icon: const PhosphorIcon(PhosphorIconsLight.star),
                    ),
                    FloatingActionButton.large(
                      onPressed: null,
                      tooltip: I18n.button,
                      child: const PhosphorIcon(PhosphorIconsLight.star),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
}

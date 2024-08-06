import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';

class SectionPart extends Padding {
  final List<Widget> children;
  final Text title;
  final Widget? leading;
  SectionPart({
    super.key,
    required this.children,
    required this.title,
    this.leading,
  }) : super(
          padding: const EdgeInsets.all(8),
          child: ExpansionTile(
            title: title,
            leading: leading,
            children: [
              Wrap(
                spacing: 16,
                runSpacing: 16,
                children: children,
              ).paddingAll(4),
            ],
          ),
        );
}

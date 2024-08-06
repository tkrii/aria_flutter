import 'package:example/app/controllers/base_controller.dart';
import 'package:flutter/material.dart';

class WidgetsView extends DefaultTabController {
  final BaseController controller;
  WidgetsView({
    super.key,
    required this.controller,
    required List<(Tab, Widget)> sections,
  }) : super(
          length: sections.length,
          initialIndex: controller.widgetsSections.value,
          child: Column(
            children: [
              TabBar(
                isScrollable: true,
                tabs: sections.map((s) => s.$1).toList(),
                onTap: (value) => controller.widgetsSections.value = value,
              ),
              Expanded(
                child: TabBarView(
                  children: sections.map((s) => s.$2).toList(),
                ),
              ),
            ],
          ),
        );
}

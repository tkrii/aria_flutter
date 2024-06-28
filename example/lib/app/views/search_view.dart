import 'dart:async';

import 'package:example/app/controllers/base_controller.dart';
import 'package:example/core/values/elementary_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

FutureOr<Iterable<Widget>> searchView(BuildContext context, SearchController searchController) => ElementaryColors.values
    .where(
      (element) => element.name.contains(searchController.text),
    )
    .map(
      (e) => ListTile(
        title: Text('Argo Variant ${e.name.capitalize}'),
        leading: PhosphorIcon(
          PhosphorIconsFill.swatches,
          color: e.color,
        ),
        onTap: () {
          BaseController controller = Get.find(
            tag: 'main',
          );
          controller.color.value = e;
          searchController.closeView(e.name);
        },
      ),
    );

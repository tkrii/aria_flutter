import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/get_utils.dart';

class TypographyView extends SafeArea {
  TypographyView({super.key})
      : super(
          child: SelectableText.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Display large\n',
                  style: Get.context?.textTheme.displayLarge,
                ),
                TextSpan(
                  text: 'Display medium\n',
                  style: Get.context?.textTheme.displayMedium,
                ),
                TextSpan(
                  text: 'Display small\n',
                  style: Get.context?.textTheme.displaySmall,
                ),
                TextSpan(
                  text: 'Title large\n',
                  style: Get.context?.textTheme.titleLarge,
                ),
                TextSpan(
                  text: 'Title medium\n',
                  style: Get.context?.textTheme.titleMedium,
                ),
                TextSpan(
                  text: 'Title small\n',
                  style: Get.context?.textTheme.titleSmall,
                ),
                TextSpan(
                  text: 'Headline large\n',
                  style: Get.context?.textTheme.headlineLarge,
                ),
                TextSpan(
                  text: 'Headline medium\n',
                  style: Get.context?.textTheme.headlineMedium,
                ),
                TextSpan(
                  text: 'Headline small\n',
                  style: Get.context?.textTheme.headlineSmall,
                ),
                TextSpan(
                  text: 'Body large\n',
                  style: Get.context?.textTheme.bodyLarge,
                ),
                TextSpan(
                  text: 'Body medium\n',
                  style: Get.context?.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: 'Body small\n',
                  style: Get.context?.textTheme.bodySmall,
                ),
                TextSpan(
                  text: 'Label large\n',
                  style: Get.context?.textTheme.labelLarge,
                ),
                TextSpan(
                  text: 'Label medium\n',
                  style: Get.context?.textTheme.labelMedium,
                ),
                TextSpan(
                  text: 'Label small\n',
                  style: Get.context?.textTheme.labelSmall,
                ),
              ],
            ),
          ).paddingSymmetric(
            vertical: 8,
            horizontal: 16,
          ),
        );
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FontsView extends StatelessWidget {
  const FontsView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text(
          'Display large',
          style: context.textTheme.displayLarge,
        ),
        Text(
          'Display medium',
          style: context.textTheme.displayMedium,
        ),
        Text(
          'Display small',
          style: context.textTheme.displaySmall,
        ),
        Text(
          'Headline large',
          style: context.textTheme.headlineLarge,
        ),
        Text(
          'Headline medium',
          style: context.textTheme.headlineMedium,
        ),
        Text(
          'Headline small',
          style: context.textTheme.headlineSmall,
        ),
        Text(
          'Title large',
          style: context.textTheme.titleLarge,
        ),
        Text(
          'Title medium',
          style: context.textTheme.titleMedium,
        ),
        Text(
          'Title small',
          style: context.textTheme.titleSmall,
        ),
        Text(
          'Body large',
          style: context.textTheme.bodyLarge,
        ),
        Text(
          'Body medium',
          style: context.textTheme.bodyMedium,
        ),
        Text(
          'Body small',
          style: context.textTheme.bodySmall,
        ),
        Text(
          'Label large',
          style: context.textTheme.labelLarge,
        ),
        Text(
          'Label medium',
          style: context.textTheme.labelMedium,
        ),
        Text(
          'Label small',
          style: context.textTheme.labelSmall,
        ),
      ],
    ).paddingSymmetric(horizontal: 16);
  }
}

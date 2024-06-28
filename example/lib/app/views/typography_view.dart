import 'package:example/app/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';

class TypographyView extends StatelessWidget {
  const TypographyView({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
            SearchAnchor.bar(
              isFullScreen: false,
              suggestionsBuilder: searchView,
            ).paddingAll(8),
            Expanded(
              child: SelectableText.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Display large\n',
                      style: context.textTheme.displayLarge,
                    ),
                    TextSpan(
                      text: 'Display medium\n',
                      style: context.textTheme.displayMedium,
                    ),
                    TextSpan(
                      text: 'Display small\n',
                      style: context.textTheme.displaySmall,
                    ),
                    TextSpan(
                      text: 'Title large\n',
                      style: context.textTheme.titleLarge,
                    ),
                    TextSpan(
                      text: 'Title medium\n',
                      style: context.textTheme.titleMedium,
                    ),
                    TextSpan(
                      text: 'Title small\n',
                      style: context.textTheme.titleSmall,
                    ),
                    TextSpan(
                      text: 'Headline large\n',
                      style: context.textTheme.headlineLarge,
                    ),
                    TextSpan(
                      text: 'Headline medium\n',
                      style: context.textTheme.headlineMedium,
                    ),
                    TextSpan(
                      text: 'Headline small\n',
                      style: context.textTheme.headlineSmall,
                    ),
                    TextSpan(
                      text: 'Body large\n',
                      style: context.textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Body medium\n',
                      style: context.textTheme.bodyMedium,
                    ),
                    TextSpan(
                      text: 'Body small\n',
                      style: context.textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: 'Label large\n',
                      style: context.textTheme.labelLarge,
                    ),
                    TextSpan(
                      text: 'Label medium\n',
                      style: context.textTheme.labelMedium,
                    ),
                    TextSpan(
                      text: 'Label small\n',
                      style: context.textTheme.labelSmall,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}

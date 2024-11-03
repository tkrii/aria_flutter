import 'package:aria/aria.dart';
import 'package:example/generated/locales.g.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaletteView extends StatelessWidget {
  const PaletteView({super.key});
  @override
  Widget build(BuildContext context) {
    final colorScheme = context.theme.colorScheme;

    Widget colorCard(String label, Color accent) {
      return Card(
        color: accent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SmallText(
              label,
              color: accent.foregroundColor,
            ),
            SmallText(
              '#${accent.value.toRadixString(16)}',
              color: accent.foregroundColor,
            ),
          ],
        ),
      );
    }

    SliverGrid gridView(List<({String label, Color accent})> data) =>
        SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 190,
            mainAxisExtent: 48,
          ),
          itemBuilder: (context, index) => colorCard(
            data[index].label,
            data[index].accent,
          ),
          itemCount: data.length,
        );

    SliverList sectionTitle(String label) => SliverList.list(
          children: [
            const Divider().paddingOnly(top: 16),
            Text(
              label,
              style: createTextTheme(context.theme.colorScheme.onSurfaceVariant)
                  .headlineSmall, //context.textTheme.headlineSmall,
            ),
          ],
        );

    return CustomScrollView(
      slivers: [
        sectionTitle(LocaleKeys.app_palette_accent.tr),
        gridView(
          [
            (
              label: 'primary',
              accent: colorScheme.primary,
            ),
            (
              label: 'onPrimary',
              accent: colorScheme.onPrimary,
            ),
            (
              label: 'secondary',
              accent: colorScheme.secondary,
            ),
            (
              label: 'onSecondary',
              accent: colorScheme.onSecondary,
            ),
            (
              label: 'tertiary',
              accent: colorScheme.tertiary,
            ),
            (
              label: 'onTertiary',
              accent: colorScheme.onTertiary,
            ),
            (
              label: 'primaryContainer',
              accent: colorScheme.primaryContainer,
            ),
            (
              label: 'onPrimaryContainer',
              accent: colorScheme.onPrimaryContainer,
            ),
            (
              label: 'secondaryContainer',
              accent: colorScheme.secondaryContainer,
            ),
            (
              label: 'onSecondaryContainer',
              accent: colorScheme.onSecondaryContainer,
            ),
            (
              label: 'tertiaryContainer',
              accent: colorScheme.tertiaryContainer,
            ),
            (
              label: 'onTertiaryContainer',
              accent: colorScheme.onTertiaryContainer,
            ),
            (
              label: 'primaryFixed',
              accent: colorScheme.primaryFixed,
            ),
          ],
        ),
        sectionTitle(LocaleKeys.app_palette_base.tr),
        gridView(
          [
            (
              label: 'surface',
              accent: colorScheme.surface,
            ),
            (
              label: 'onSurface',
              accent: colorScheme.onSurface,
            ),
            (
              label: 'onSurfaceVariant',
              accent: colorScheme.onSurfaceVariant,
            ),
            (
              label: 'surfaceContainerLowest',
              accent: colorScheme.surfaceContainerLowest,
            ),
            (
              label: 'surfaceContainerLow',
              accent: colorScheme.surfaceContainerLow,
            ),
            (
              label: 'surfaceContainer',
              accent: colorScheme.surfaceContainer,
            ),
            (
              label: 'surfaceContainerHigh',
              accent: colorScheme.surfaceContainerHigh,
            ),
            (
              label: 'surfaceContainerHighest',
              accent: colorScheme.surfaceContainerHighest,
            ),
            (
              label: 'surfaceBright',
              accent: colorScheme.surfaceBright,
            ),
            (
              label: 'surfaceDim',
              accent: colorScheme.surfaceDim,
            ),
            (
              label: 'inverseSurface',
              accent: colorScheme.inverseSurface,
            ),
            (
              label: 'onInverseSurface',
              accent: colorScheme.onInverseSurface,
            ),
            (
              label: 'inversePrimary',
              accent: colorScheme.inversePrimary,
            ),
          ],
        ),
        sectionTitle(LocaleKeys.app_palette_special.tr),
        gridView(
          [
            (
              label: 'error',
              accent: colorScheme.error,
            ),
            (
              label: 'onError',
              accent: colorScheme.onError,
            ),
            (
              label: 'errorContainer',
              accent: colorScheme.errorContainer,
            ),
            (
              label: 'onErrorContainer',
              accent: colorScheme.onErrorContainer,
            ),
            (
              label: 'shadow',
              accent: colorScheme.shadow,
            ),
            (
              label: 'scrim',
              accent: colorScheme.scrim,
            ),
            (
              label: 'outline',
              accent: colorScheme.outline,
            ),
            (
              label: 'outlineVariant',
              accent: colorScheme.outlineVariant,
            ),
          ],
        ),
        sectionTitle(
          LocaleKeys.app_palette_extensions.tr,
        ),
        gridView(
          [
            (
              label: 'accent.color',
              accent: colorScheme.accent.color,
            ),
            (
              label: 'accent.onColor',
              accent: colorScheme.accent.onColor,
            ),
            (
              label: 'accent.colorContainer',
              accent: colorScheme.accent.colorContainer,
            ),
            (
              label: 'accent.onColorContainer',
              accent: colorScheme.accent.onColorContainer,
            ),
            (
              label: 'success.color',
              accent: colorScheme.success.color,
            ),
            (
              label: 'success.onColor',
              accent: colorScheme.success.onColor,
            ),
            (
              label: 'success.colorContainer',
              accent: colorScheme.success.colorContainer,
            ),
            (
              label: 'success.onColorContainer',
              accent: colorScheme.success.onColorContainer,
            ),
            (
              label: 'warning.color',
              accent: colorScheme.warning.color,
            ),
            (
              label: 'warning.onColor',
              accent: colorScheme.warning.onColor,
            ),
            (
              label: 'warning.colorContainer',
              accent: colorScheme.warning.colorContainer,
            ),
            (
              label: 'warning.onColorContainer',
              accent: colorScheme.warning.onColorContainer,
            ),
            (
              label: 'destructive.color',
              accent: colorScheme.destructive.color,
            ),
            (
              label: 'destructive.onColor',
              accent: colorScheme.destructive.onColor,
            ),
            (
              label: 'destructive.colorContainer',
              accent: colorScheme.destructive.colorContainer,
            ),
            (
              label: 'destructive.onColorContainer',
              accent: colorScheme.destructive.onColorContainer,
            ),
            (
              label: 'onSurfaceSecondary',
              accent: colorScheme.onSurfaceSecondary,
            ),
            (
              label: 'disabled',
              accent: colorScheme.disabled,
            ),
          ],
        ),
      ],
    ).paddingSymmetric(horizontal: 16);
  }
}

class SmallText extends Text {
  final Color color;
  SmallText(
    super.data, {
    required this.color,
    super.key,
  }) : super(
          style: createTextTheme(color).bodySmall,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        );
}

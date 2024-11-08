import 'package:aria/aria.dart';
import 'package:example/generated/locales.g.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaletteView extends StatelessWidget {
  const PaletteView({super.key});
  @override
  Widget build(BuildContext context) {
    final colorScheme = context.theme.colorScheme;

    Widget colorCard(String label, Color accent, Color? onAccent) {
      return Card(
        color: accent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SmallText(
              label,
              color: onAccent ?? accent.foregroundColor,
            ),
            SmallText(
              '#${accent.value.toRadixString(16)}',
              color: onAccent ?? accent.foregroundColor,
            ),
          ],
        ),
      );
    }

    SliverGrid gridView(
            List<({String label, Color accent, Color? onAccent})> data) =>
        SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 190,
            mainAxisExtent: 48,
          ),
          itemBuilder: (context, index) => colorCard(
            data[index].label,
            data[index].accent,
            data[index].onAccent,
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
              onAccent: colorScheme.onPrimary,
            ),
            (
              label: 'onPrimary',
              accent: colorScheme.onPrimary,
              onAccent: colorScheme.primary,
            ),
            (
              label: 'secondary',
              accent: colorScheme.secondary,
              onAccent: colorScheme.onSecondary,
            ),
            (
              label: 'onSecondary',
              accent: colorScheme.onSecondary,
              onAccent: colorScheme.secondary,
            ),
            (
              label: 'tertiary',
              accent: colorScheme.tertiary,
              onAccent: colorScheme.onTertiary,
            ),
            (
              label: 'onTertiary',
              accent: colorScheme.onTertiary,
              onAccent: colorScheme.tertiary,
            ),
            (
              label: 'primaryContainer',
              accent: colorScheme.primaryContainer,
              onAccent: colorScheme.onPrimaryContainer,
            ),
            (
              label: 'onPrimaryContainer',
              accent: colorScheme.onPrimaryContainer,
              onAccent: colorScheme.primaryContainer,
            ),
            (
              label: 'secondaryContainer',
              accent: colorScheme.secondaryContainer,
              onAccent: colorScheme.onSecondaryContainer,
            ),
            (
              label: 'onSecondaryContainer',
              accent: colorScheme.onSecondaryContainer,
              onAccent: colorScheme.secondaryContainer,
            ),
            (
              label: 'tertiaryContainer',
              accent: colorScheme.tertiaryContainer,
              onAccent: colorScheme.onTertiaryContainer,
            ),
            (
              label: 'onTertiaryContainer',
              accent: colorScheme.onTertiaryContainer,
              onAccent: colorScheme.tertiaryContainer,
            ),
            (
              label: 'primaryFixed',
              accent: colorScheme.primaryFixed,
              onAccent: colorScheme.onPrimaryFixed,
            ),
          ],
        ),
        sectionTitle(LocaleKeys.app_palette_base.tr),
        gridView(
          [
            (
              label: 'surface',
              accent: colorScheme.surface,
              onAccent: colorScheme.onSurface,
            ),
            (
              label: 'onSurface',
              accent: colorScheme.onSurface,
              onAccent: colorScheme.surface,
            ),
            (
              label: 'onSurfaceVariant',
              accent: colorScheme.onSurfaceVariant,
              onAccent: colorScheme.surfaceContainerHighest,
            ),
            (
              label: 'surfaceContainerLowest',
              accent: colorScheme.surfaceContainerLowest,
              onAccent: colorScheme.onSurface,
            ),
            (
              label: 'surfaceContainerLow',
              accent: colorScheme.surfaceContainerLow,
              onAccent: colorScheme.onSurface,
            ),
            (
              label: 'surfaceContainer',
              accent: colorScheme.surfaceContainer,
              onAccent: colorScheme.onSurface,
            ),
            (
              label: 'surfaceContainerHigh',
              accent: colorScheme.surfaceContainerHigh,
              onAccent: colorScheme.onSurface,
            ),
            (
              label: 'surfaceContainerHighest',
              accent: colorScheme.surfaceContainerHighest,
              onAccent: colorScheme.onSurface,
            ),
            (
              label: 'surfaceBright',
              accent: colorScheme.surfaceBright,
              onAccent: colorScheme.onSurface,
            ),
            (
              label: 'surfaceDim',
              accent: colorScheme.surfaceDim,
              onAccent: colorScheme.onSurface,
            ),
            (
              label: 'inverseSurface',
              accent: colorScheme.inverseSurface,
              onAccent: colorScheme.onInverseSurface,
            ),
            (
              label: 'onInverseSurface',
              accent: colorScheme.onInverseSurface,
              onAccent: colorScheme.inverseSurface,
            ),
            (
              label: 'inversePrimary',
              accent: colorScheme.inversePrimary,
              onAccent: colorScheme.onSurface,
            ),
          ],
        ),
        sectionTitle(LocaleKeys.app_palette_special.tr),
        gridView(
          [
            (
              label: 'error',
              accent: colorScheme.error,
              onAccent: colorScheme.onError,
            ),
            (
              label: 'onError',
              accent: colorScheme.onError,
              onAccent: colorScheme.error,
            ),
            (
              label: 'errorContainer',
              accent: colorScheme.errorContainer,
              onAccent: colorScheme.onErrorContainer,
            ),
            (
              label: 'onErrorContainer',
              accent: colorScheme.onErrorContainer,
              onAccent: colorScheme.errorContainer,
            ),
            (
              label: 'shadow',
              accent: colorScheme.shadow,
              onAccent: null,
            ),
            (
              label: 'scrim',
              accent: colorScheme.scrim,
              onAccent: null,
            ),
            (
              label: 'outline',
              accent: colorScheme.outline,
              onAccent: null,
            ),
            (
              label: 'outlineVariant',
              accent: colorScheme.outlineVariant,
              onAccent: null,
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
              onAccent: colorScheme.accent.onColor,
            ),
            (
              label: 'accent.onColor',
              accent: colorScheme.accent.onColor,
              onAccent: colorScheme.accent.color,
            ),
            (
              label: 'accent.colorContainer',
              accent: colorScheme.accent.colorContainer,
              onAccent: colorScheme.accent.onColorContainer,
            ),
            (
              label: 'accent.onColorContainer',
              accent: colorScheme.accent.onColorContainer,
              onAccent: colorScheme.accent.colorContainer,
            ),
            (
              label: 'success.color',
              accent: colorScheme.success.color,
              onAccent: colorScheme.success.onColor,
            ),
            (
              label: 'success.onColor',
              accent: colorScheme.success.onColor,
              onAccent: colorScheme.success.color,
            ),
            (
              label: 'success.colorContainer',
              accent: colorScheme.success.colorContainer,
              onAccent: colorScheme.success.onColorContainer,
            ),
            (
              label: 'success.onColorContainer',
              accent: colorScheme.success.onColorContainer,
              onAccent: colorScheme.success.colorContainer,
            ),
            (
              label: 'warning.color',
              accent: colorScheme.warning.color,
              onAccent: colorScheme.warning.onColor,
            ),
            (
              label: 'warning.onColor',
              accent: colorScheme.warning.onColor,
              onAccent: colorScheme.warning.color,
            ),
            (
              label: 'warning.colorContainer',
              accent: colorScheme.warning.colorContainer,
              onAccent: colorScheme.warning.onColorContainer,
            ),
            (
              label: 'warning.onColorContainer',
              accent: colorScheme.warning.onColorContainer,
              onAccent: colorScheme.warning.colorContainer,
            ),
            (
              label: 'destructive.color',
              accent: colorScheme.destructive.color,
              onAccent: colorScheme.destructive.onColor,
            ),
            (
              label: 'destructive.onColor',
              accent: colorScheme.destructive.onColor,
              onAccent: colorScheme.destructive.color,
            ),
            (
              label: 'destructive.colorContainer',
              accent: colorScheme.destructive.colorContainer,
              onAccent: colorScheme.destructive.onColorContainer,
            ),
            (
              label: 'destructive.onColorContainer',
              accent: colorScheme.destructive.onColorContainer,
              onAccent: colorScheme.destructive.colorContainer,
            ),
            (
              label: 'onSurfaceSecondary',
              accent: colorScheme.onSurfaceSecondary,
              onAccent: null,
            ),
            (
              label: 'disabled',
              accent: colorScheme.disabled,
              onAccent: null,
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

import 'package:flutter/material.dart';

class ButtonsControlsView extends CustomScrollView {
  final List<Widget> children;
  final double extent;

  ButtonsControlsView({
    required this.children,
    super.key,
    this.extent = 56,
  }) : super(
          slivers: [
            SliverGrid.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 220,
                mainAxisExtent: extent,
              ),
              itemBuilder: (context, index) => Center(
                child: children[index],
              ),
              itemCount: children.length,
            ),
          ],
        );
}

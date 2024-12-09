import 'package:flutter/material.dart';

class DashedDivider extends StatelessWidget {
  final Color color;
  final double dashWidth;
  final double dashSpacing;
  final double thickness;

  const DashedDivider({
    super.key,
    this.color = Colors.black,
    this.dashWidth = 4.0,
    this.dashSpacing = 4.0,
    this.thickness = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double dashCount =
            (constraints.constrainWidth() / (dashWidth + dashSpacing))
                .floor()
                .toDouble();
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            dashCount.toInt(),
            (index) => Container(
              width: dashWidth,
              height: thickness,
              color: color,
            ),
          ),
        );
      },
    );
  }
}

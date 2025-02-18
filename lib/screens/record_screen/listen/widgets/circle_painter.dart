import 'package:flutter/material.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class CirclePainter extends CustomPainter {
  final Duration duration;
  final Duration position;

  CirclePainter(this.duration, this.position);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.fontColor
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final double centerY = size.height / 2;
    final double progress =
        (position.inMilliseconds / duration.inMilliseconds).clamp(0.0, 1.0);
    final double circleX = progress * size.width;

    canvas.drawLine(
      Offset(0, centerY),
      Offset(size.width, centerY),
      paint,
    );

    canvas.drawCircle(
      Offset(circleX, centerY),
      10,
      paint..style = PaintingStyle.fill,
    );
  }

  @override
  bool shouldRepaint(covariant CirclePainter oldDelegate) =>
      oldDelegate.position != position || oldDelegate.duration != duration;
}

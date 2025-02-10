import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  final Duration duration;
  final Duration position;

  LinePainter(this.duration, this.position);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    final double centerY = size.height / 2;

    final double progress =
        (position.inMilliseconds / (duration.inMilliseconds)).clamp(0.0, 1.0);

    final double circleX = progress * size.width;

    canvas.drawLine(
      Offset(0, centerY),
      Offset(size.width, centerY),
      paint,
    );

    canvas.drawCircle(
      Offset(circleX, centerY),
      6,
      paint..style = PaintingStyle.fill,
    );
  }

  @override
  bool shouldRepaint(covariant LinePainter oldDelegate) =>
      oldDelegate.position != position || oldDelegate.duration != duration;
}

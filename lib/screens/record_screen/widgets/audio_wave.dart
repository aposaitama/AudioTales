import 'package:flutter/material.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class SoundWavePainter extends CustomPainter {
  final List<double> decibelValues;

  SoundWavePainter({required this.decibelValues});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.fontColor
      ..strokeWidth = 2.0
      ..style = PaintingStyle.fill;

    final double centerY = size.height / 2;
    const double barSpacing = 4.0;

    canvas.drawLine(
      Offset(0, centerY),
      Offset(size.width, centerY),
      paint,
    );

    for (int i = 0; i < decibelValues.length; i++) {
      double lineHeight = decibelValues[i];

      double startX = size.width - (decibelValues.length - i) * barSpacing;
      double startY = centerY - lineHeight / 2;
      double endY = centerY + lineHeight / 2;

      canvas.drawLine(
        Offset(startX, startY),
        Offset(startX, endY),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

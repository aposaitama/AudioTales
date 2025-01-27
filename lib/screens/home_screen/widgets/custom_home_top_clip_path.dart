import 'package:flutter/material.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class CustomHomeTopClipPath extends StatelessWidget {
  const CustomHomeTopClipPath({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomTopClipper(),
      child: Container(
        height: MediaQuery.of(context).size.height / 3 - 67,
        color: AppColors.purpleColor,
      ),
    );
  }
}

class CustomTopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double maxHeight = size.height;
    double height = size.height - 77;
    double width = size.width;
    Path path = Path();
    path.moveTo(0, height);
    path.quadraticBezierTo(
        size.width / 3, maxHeight, size.width - size.width / 3, maxHeight);
    path.quadraticBezierTo(
        size.width - 50, maxHeight, size.width, maxHeight - 20);
    path.lineTo(width, 0);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

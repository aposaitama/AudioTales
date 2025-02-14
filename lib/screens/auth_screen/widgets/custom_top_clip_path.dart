import 'package:flutter/material.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class CustomTopClipPath extends StatelessWidget {
  final String title;
  final String? subTitle;
  const CustomTopClipPath({super.key, required this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomTopClipper(),
      child: Container(
        height: MediaQuery.of(context).size.height / 3 - 30,
        color: AppColors.purpleColor,
        child: Center(
          child: IntrinsicWidth(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 46.0,
                    fontWeight: FontWeight.w700,
                    height: 1.0,
                    letterSpacing: 3,
                    fontFamily: 'TTNorms',
                  ),
                  textAlign: TextAlign.center,
                ),
                subTitle != null && subTitle!.isNotEmpty
                    ? Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          subTitle!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontFamily: 'TTNorms',
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ),
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
        size.width / 3, maxHeight, size.width - size.width / 3, maxHeight,);
    path.quadraticBezierTo(
        size.width - 50, maxHeight, size.width, maxHeight - 20,);
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

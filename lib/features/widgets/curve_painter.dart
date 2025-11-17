import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  final Color? backColor;
  final Color? frontColor;

  CurvePainter({this.backColor, this.frontColor});

  @override
  void paint(Canvas canvas, Size size) {
    final paintBack = Paint()
      ..color = backColor ?? const Color(0xFFFF8A00)
      ..style = PaintingStyle.fill;

    Path backPath = Path();
    backPath.lineTo(0, size.height * 0.55);
    backPath.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.25,
      size.width,
      size.height * 0.55,
    );
    backPath.lineTo(size.width, 0);
    backPath.close();

    canvas.drawPath(backPath, paintBack);

    final paintFront = Paint()
      ..color = frontColor ?? const Color(0xFFFFA726)
      ..style = PaintingStyle.fill;

    Path frontPath = Path();
    frontPath.lineTo(0, size.height * 0.75);
    frontPath.quadraticBezierTo(
      size.width * 0.35,
      size.height * 0.55,
      size.width * 0.65,
      size.height * 0.80,
    );
    frontPath.quadraticBezierTo(
      size.width * 0.87,
      size.height * 0.95,
      size.width,
      size.height * 0.75,
    );
    frontPath.lineTo(size.width, 0);
    frontPath.close();

    canvas.drawPath(frontPath, paintFront);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

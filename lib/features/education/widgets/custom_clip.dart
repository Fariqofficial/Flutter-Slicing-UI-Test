part of '../education_screen.dart';

class CustomClip extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.moveTo(0, size.height);

    path.moveTo(size.width * 0.001035338, size.height * 0.9985880);
    path.lineTo(size.width * 0.04270199, size.height * 0.9881713);
    path.lineTo(size.width * 0.08668333, size.height * 0.9765972);
    path.lineTo(size.width * 0.1329796, size.height * 0.9638657);
    path.lineTo(size.width * 0.2070537, size.height * 0.9360880);
    path.lineTo(size.width * 0.2741833, size.height * 0.9036806);
    path.lineTo(size.width * 0.3505722, size.height * 0.8515972);
    path.lineTo(size.width * 0.4038130, size.height * 0.8064583);
    path.lineTo(size.width * 0.4501093, size.height * 0.7451157);
    path.lineTo(size.width * 0.4848333, size.height * 0.6884028);
    path.lineTo(size.width * 0.5149259, size.height * 0.5761343);
    path.lineTo(size.width * 0.5149259, size.height * 0.5240509);
    path.lineTo(size.width * 0.5149259, size.height * 0.4696528);
    path.lineTo(size.width * 0.5149259, size.height * 0.4117824);
    path.lineTo(size.width * 0.5334444, size.height * 0.3620139);
    path.lineTo(size.width * 0.5589074, size.height * 0.3226620);
    path.lineTo(size.width * 0.5843704, size.height * 0.2867824);
    path.lineTo(size.width * 0.6584444, size.height * 0.1941907);
    path.lineTo(size.width * 0.7394630, size.height * 0.1351630);
    path.lineTo(size.width * 0.8297407, size.height * 0.07613519);
    path.lineTo(size.width * 0.9153889, size.height * 0.03331111);
    path.lineTo(size.width * 0.9964074, size.height * 0.0009036597);

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    Paint fill = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.purple;

    canvas.drawPath(path, fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

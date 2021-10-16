import 'package:flutter/material.dart';

import '../../../constants.dart';

class RPSCustomPainter extends CustomPainter {
  const RPSCustomPainter(
    this.deep,
    this.light,
  );

  final Color? deep;
  final Color? light;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_1 = new Paint()
      ..color = kFacilityBackgroundDeepColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9579083, size.height * 0.4304857);
    path_1.lineTo(size.width * 0.8332583, size.height * 0.5511571);
    path_1.lineTo(size.width * 0.8329000, size.height * 0.4284000);
    path_1.lineTo(size.width * 0.9580000, size.height * 0.4265714);
    path_1.close();

    canvas.drawPath(path_1, paint_1);

    Paint paint_2 = new Paint()
      ..color = kFacilityBackgroundLightColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.0420000, size.height * 0.1817143);
    path_2.quadraticBezierTo(size.width * 0.0419000, size.height * 0.1157714,
        size.width * 0.1246667, size.height * 0.1131429);
    path_2.quadraticBezierTo(size.width * 0.8635000, size.height * 0.1165714,
        size.width * 0.8760000, size.height * 0.1165714);
    path_2.quadraticBezierTo(size.width * 0.9500000, size.height * 0.1165714,
        size.width * 0.9586667, size.height * 0.1817143);
    path_2.quadraticBezierTo(size.width * 0.9580000, size.height * 0.4025714,
        size.width * 0.9580000, size.height * 0.4240000);
    path_2.quadraticBezierTo(size.width * 0.9580000, size.height * 0.4525714,
        size.width * 0.6740000, size.height * 0.4411429);
    path_2.quadraticBezierTo(size.width * 0.1371667, size.height * 0.4422857,
        size.width * 0.1246667, size.height * 0.4422857);
    path_2.quadraticBezierTo(size.width * 0.0441667, size.height * 0.4411571,
        size.width * 0.0413333, size.height * 0.3748571);
    path_2.quadraticBezierTo(size.width * 0.0420000, size.height * 0.2471429,
        size.width * 0.0420000, size.height * 0.1817143);
    path_2.close();

    canvas.drawPath(path_2, paint_2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

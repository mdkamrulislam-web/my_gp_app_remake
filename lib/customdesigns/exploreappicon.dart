import 'package:flutter/material.dart';
import 'package:testing/pages/home.dart';

class RPSCustomPainter extends CustomPainter {
  const RPSCustomPainter(
      this.backgroundcolor, this.tringle1, this.tringle2, this.insideCircle);

  final backgroundcolor;
  final tringle1;
  final tringle2;
  final insideCircle;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = backgroundcolor;
    // Color(0xffFFFFFF).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.4991493, size.height * 0.5003993),
        size.width * 0.4639583, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.2283854, size.height * 0.7711632);
    path_1.lineTo(size.width * 0.5842882, size.height * 0.5855035);
    path_1.lineTo(size.width * 0.4991667, size.height * 0.5003819);
    path_1.lineTo(size.width * 0.4140451, size.height * 0.4152604);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = tringle1;
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.7699132, size.height * 0.2296354);
    path_2.lineTo(size.width * 0.5842535, size.height * 0.5855382);
    path_2.lineTo(size.width * 0.4991319, size.height * 0.5004167);
    path_2.lineTo(size.width * 0.4140104, size.height * 0.4152951);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = tringle2;
    canvas.drawPath(path_2, paint_2_fill);

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = insideCircle;
    canvas.drawCircle(Offset(size.width * 0.4991493, size.height * 0.5003993),
        size.width * 0.07612847, paint_3_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

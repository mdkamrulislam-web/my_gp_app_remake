import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testing/constants.dart';
import 'gpinternet.dart';
import 'dart:ui' as ui;

class GPInternetOfferCards extends StatelessWidget {
  const GPInternetOfferCards(
      this.day, this.tk, this.net, this.coins, this.facility,
      {Key? key})
      : super(key: key);

  final String? day;
  final int? tk;
  final String? net;
  final int? coins;
  final String? facility;

  @override
  Container? coinChecker() {
    if (coins != null) {
      Container x = kInternetPackageIconWithBackground;
      return x;
    }
  }

  String? coinVerifier() {
    if (coins != null) {
      String x = coins.toString();
      return x;
    }
    if (coins == null) {
      String x = '';
      return x;
    }
  }

  RPSCustomPainter? customPaintBackground() {
    if (facility != '') {
      RPSCustomPainter x = RPSCustomPainter(
          kFacilityBackgroundDeepColor = Color.fromRGBO(0, 111, 186, 1),
          kFacilityBackgroundLightColor = Color.fromRGBO(2, 120, 207, 1));
      return x;
    }
    if (facility != '') {
      RPSCustomPainter x = RPSCustomPainter(
          kFacilityBackgroundDeepColor = Colors.white,
          kFacilityBackgroundLightColor = Colors.white);
      return x;
    }
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 8, bottom: 1.5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.25, 0.5), //(x,y)
                      blurRadius: 1.5, // spreadRadius: 1.0, //extend the shadow
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: kPackageIcon_net,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text(
                              '$net',
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 54, right: 20, bottom: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '$day',
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 16.0, right: 8.0),
                                  child: coinChecker(),
                                ),
                                Text(
                                  coinVerifier().toString(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '৳$tk',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 8,
              child: CustomPaint(
                size: Size(
                    170,
                    (120 * 0.65)
                        .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: customPaintBackground(),
              ),
            ),
            Positioned(
              right: 25,
              top: 22,
              child: Text(
                '$facility',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
            ),
            Positioned(
              bottom: 80,
              child: Align(
                child: Container(
                  height: 20,
                  width: 40,
                  margin: EdgeInsets.only(top: 40, left: 40, right: 40),
                  decoration: new BoxDecoration(
                    color: Color.fromRGBO(183, 234, 183, 1),
                    // border: Border.all(color: Colors.black, width: 0.0),
                    borderRadius:
                        new BorderRadius.all(Radius.elliptical(50, 50)),
                  ),
                  child: Center(
                    child: Text(
                      'New',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

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

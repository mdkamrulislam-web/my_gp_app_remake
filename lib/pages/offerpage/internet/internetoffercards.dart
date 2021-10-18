import 'package:flutter/material.dart';
import 'package:testing/constants.dart';

import 'customshapedbox.dart';

class GPInternetOfferCards extends StatelessWidget {
  const GPInternetOfferCards(
      this.day, this.tk, this.net, this.coins, this.facility,
      {Key? key})
      : super(key: key);

  final int? day;
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

  String? dayOrHourChecker() {
    if (day! <= 3) {
      int hour = day! * 24;
      String x = "$hour Hour";
      return x;
    } else {
      String x = "$day Day";
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
                  left: 16, right: 16, top: 8, bottom: 3.5),
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
                                  dayOrHourChecker()!,
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
              bottom: 81,
              child: Container(
                height: 20,
                width: 40,
                margin: EdgeInsets.only(top: 40, left: 40, right: 40),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(183, 234, 183, 1),
                  // border: Border.all(color: Colors.black, width: 0.0),
                  borderRadius: BorderRadius.all(Radius.elliptical(50, 50)),
                ),
                child: Center(
                  child: Text(
                    'New',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testing/constants.dart';
import 'gpinternet.dart';

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

  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
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
                    padding:
                        const EdgeInsets.only(left: 54, right: 20, bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              '$day',
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.0, right: 8.0),
                              child: coinChecker(),
                            ),
                            Text(coinVerifier().toString()),
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
        const SizedBox(height: 16),
      ],
    );
  }
}

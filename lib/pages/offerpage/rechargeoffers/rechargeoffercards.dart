import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testing/constants.dart';

class RechargeOffersPackageCard extends StatelessWidget {
  const RechargeOffersPackageCard(
      this.minute, this.day, this.tk, this.net, this.cashback, this.bonus,
      {Key? key})
      : super(key: key);

  final int? minute;
  final int? day;
  final int? tk;
  final String? net;
  final int? cashback;
  final String? bonus;

  @override
  Widget build(BuildContext context) {
    String? dataChecker() {
      if (minute != null && net != '') {
        String x = '$minute Minutes + $net';
        return x;
      } else if (minute == null && net != '') {
        String x = '$net';
        return x;
      } else if (minute != null && net == '') {
        String x = '$minute Minutes';
        return x;
      }
    }

    FaIcon? iconSelector() {
      if (minute != null && net != '') {
        FaIcon m = kPackageIcon_bundle;
        return m;
      } else if (minute == null && net != '') {
        FaIcon m = kPackageIcon_net;
        return m;
      } else if (minute != null && net == '') {
        FaIcon m = kPackageIcon_phone;
        return m;
      }
    }

    String? bonusChecker() {
      if (bonus != null) {
        String x = '+' + bonus.toString();
        return x;
      } else if (bonus == null) {
        String x = '';
        return x;
      }
    }

    List? bonusAndBonusContainerChecker() {
      if (bonus != null) {
        BoxDecoration bd = BoxDecoration(
          color: Color.fromRGBO(225, 255, 240, 1),
          borderRadius: new BorderRadius.all(Radius.elliptical(50, 50)),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.25, 0.25), //(x,y)
              blurRadius: 1.5, // spreadRadius: 1.0, //extend the shadow
            )
          ],
        );
        TextStyle ts = TextStyle(
            fontWeight: FontWeight.w600, fontSize: 12, color: Colors.black);
        return [bd, ts];
      } else if (bonus == null) {
        BoxDecoration bd = BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              offset: Offset(0, 0), //(x,y)
              blurRadius: 0, // spreadRadius: 1.0, //extend the shadow
            )
          ],
        );
        TextStyle ts = TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12,
          color: Colors.white,
        );
        return [bd, ts];
      }
    }

    // '$minute Minutes + $net'
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
                        child: iconSelector(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          dataChecker()!,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        decoration: bonusAndBonusContainerChecker()![0],
                        // BoxDecoration(
                        //   color: Color.fromRGBO(225, 255, 240, 1),
                        //   borderRadius:
                        //       new BorderRadius.all(Radius.elliptical(50, 50)),
                        //   boxShadow: const [
                        //     BoxShadow(
                        //       color: Colors.grey,
                        //       offset: Offset(0.25, 0.25), //(x,y)
                        //       blurRadius:
                        //           1.5, // spreadRadius: 1.0, //extend the shadow
                        //     )
                        //   ],
                        // ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 4.0, bottom: 4.0, left: 8, right: 8),
                            child: Text(
                              bonusChecker()!,
                              style: bonusAndBonusContainerChecker()![1],
                              // TextStyle(
                              //     fontWeight: FontWeight.w600,
                              //     fontSize: 12,
                              //     color: Colors.black),
                            ),
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
                        Text(
                          '$day Days',
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          '৳$tk',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: const Color.fromRGBO(245, 245, 245, 1),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 8),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 3.0, right: 8),
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(0, 120, 206, 1),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Center(
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 2.0),
                                          child: Text(
                                            '৳',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Get TK $cashback Cashback',
                                    style: const TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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

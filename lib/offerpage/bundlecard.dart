import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PackageCard extends StatelessWidget {
  const PackageCard(
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
                      const Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: FaIcon(
                          Icons.inventory_2_outlined,
                          color: Color.fromRGBO(51, 122, 187, 1),
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          dataChecker()!,
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

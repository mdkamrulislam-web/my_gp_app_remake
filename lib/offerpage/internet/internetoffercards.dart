import 'package:flutter/material.dart';
import 'package:testing/constants.dart';

class GPInternetOfferCards extends StatefulWidget {
  const GPInternetOfferCards({Key? key}) : super(key: key);

  @override
  _GPInternetOfferCardsState createState() => _GPInternetOfferCardsState();
}

class _GPInternetOfferCardsState extends State<GPInternetOfferCards> {
  @override
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
                          '13 GB',
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
                          '7 Days',
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          '৳152',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
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

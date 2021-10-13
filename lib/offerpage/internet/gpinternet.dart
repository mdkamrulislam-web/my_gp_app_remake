import 'package:flutter/material.dart';
import 'package:testing/offerpage/internet/internetoffercards.dart';

class GPInternet extends StatefulWidget {
  const GPInternet({Key? key}) : super(key: key);

  @override
  _GPInternetState createState() => _GPInternetState();
}

class _GPInternetState extends State<GPInternet> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 20.0, bottom: 24),
          child: Row(
            children: const [
              Text(
                'Note: ',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
              Text(
                'The offers will activate with recharge',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),

        const GPInternetOfferCards(),
        // (1000, 30, 796, '25 GB', 80, null), // minute; day; tk; gb; cashback; bonus;
        const GPInternetOfferCards(),
        // (750, 30, 598, '25 GB', 52, null),
        const GPInternetOfferCards(),
        // (null, 30, 516, '50 GB', 50, null),
        const GPInternetOfferCards(),
        // (500, 30, 307, '', 40, '512 MB'),
        const GPInternetOfferCards(),
        // (null, 30, 307, '1 GB', 20, null),
        const GPInternetOfferCards(),
      ],
    );
  }
}

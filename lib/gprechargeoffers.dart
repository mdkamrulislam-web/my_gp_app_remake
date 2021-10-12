import 'package:flutter/material.dart';
import 'bundlecard.dart';

class GPRechargeOffers extends StatelessWidget {
  const GPRechargeOffers({
    Key? key,
  }) : super(key: key);

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

        const PackageCard(1000, 30, 796, '25 GB', 80,
            null), // minute; day; tk; gb; cashback; bonus;
        const PackageCard(750, 30, 598, '25 GB', 52, null),
        const PackageCard(null, 30, 516, '50 GB', 50, null),
        const PackageCard(500, 30, 307, '', 40, '512 MB'),
        const PackageCard(null, 30, 307, '1 GB', 20, null),
      ],
    );
  }
}

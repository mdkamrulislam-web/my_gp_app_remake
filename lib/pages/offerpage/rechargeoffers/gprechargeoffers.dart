import 'package:flutter/material.dart';
import 'rechargeoffercards.dart';

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

        const RechargeOffersPackageCard(1000, 30, 796, '25 GB', 80,
            null), // minute; day; tk; gb; cashback; bonus;
        const RechargeOffersPackageCard(750, 30, 598, '25 GB', 52, null),
        const RechargeOffersPackageCard(null, 30, 516, '50 GB', 50, null),
        const RechargeOffersPackageCard(500, 30, 307, '', 40, '512 MB'),
        const RechargeOffersPackageCard(null, 30, 307, '1 GB', 20, null),
      ],
    );
  }
}

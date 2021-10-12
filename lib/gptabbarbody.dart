import 'package:flutter/material.dart';
import 'package:testing/gprechargeoffers.dart';

class GPTabBarBody extends StatelessWidget {
  const GPTabBarBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: <Widget>[
        Center(
          child: Text('Internet'),
        ),
        Center(
          child: Text('Minutes'),
        ),
        Center(
          child: GPRechargeOffers(),
        ),
        Center(
          child: Text('Gift Pack'),
        ),
        Center(
          child: Text('My Offers'),
        ),
        Center(
          child: Text('Free Offers'),
        ),
        Center(
          child: Text('Bonus'),
        ),
      ],
    );
  }
}

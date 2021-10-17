import 'package:flutter/material.dart';
import 'package:testing/api/rechargeofferapi.dart';
import 'package:testing/models/rechargeoffermodel.dart';
import 'rechargeoffercards.dart';

class GPRechargeOffers extends StatelessWidget {
  const GPRechargeOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: FutureBuilder<List<RechargeOfferDataModel>>(
              future: RechargeOfferApi.getRechargeOfferDataLocally(context),
              builder: (context, snapshot) {
                final rechargeoffers = snapshot.data;

                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return const Center(child: CircularProgressIndicator());
                  default:
                    if (snapshot.hasError) {
                      return const Center(child: Text('Some Error Occured!'));
                    } else {
                      return buildRechargeOffers(rechargeoffers!);
                    }
                }
              }),
        ),
      ],
    );
  }

  Widget buildRechargeOffers(List<RechargeOfferDataModel> rechargeoffers) {
    return Column(
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
        Expanded(
          child: ListView.builder(
              itemCount: rechargeoffers.length,
              itemBuilder: (context, index) {
                final rechargeoffer = rechargeoffers[index];
                return RechargeOffersPackageCard(
                    rechargeoffer.minute,
                    rechargeoffer.day,
                    rechargeoffer.tk,
                    rechargeoffer.net,
                    rechargeoffer.cashback,
                    rechargeoffer
                        .bonus); // minute; day; tk; gb; cashback; bonus;;
              }),
        ),
      ],
    );
  }
}

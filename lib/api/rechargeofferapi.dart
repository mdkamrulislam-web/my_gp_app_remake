import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:testing/models/rechargeoffermodel.dart';

class RechargeOfferApi {
  static Future<List<RechargeOfferDataModel>> getRechargeOfferDataLocally(
      BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data =
        await assetBundle.loadString('assets/jsonfiles/gprechargeoffers.json');
    final body = json.decode(data);
    return body
        .map<RechargeOfferDataModel>(RechargeOfferDataModel.fromJson)
        .toList();
  }
}

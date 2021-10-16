import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:testing/internetofferdatamodel.dart';

class InternetOfferApi {
  static Future<List<InterOfferDataModel>> getInternetOfferDataLocally(
      BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/gpinternetoffers.json');
    final body = json.decode(data);
    return body.map<InterOfferDataModel>(InterOfferDataModel.fromJson).toList();
  }
}

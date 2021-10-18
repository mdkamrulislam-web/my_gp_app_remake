class InterOfferDataModel {
  final int? id;
  final int? day;
  final int? tk;
  final String? net;
  final int? coins;
  final String? facility;
  final String? package;

  const InterOfferDataModel({
    this.id = 0,
    this.day = 0,
    this.tk = 0,
    this.net = "",
    this.coins = 0,
    this.facility = "",
    this.package = "",
  });

  static InterOfferDataModel fromJson(json) => InterOfferDataModel(
        id: json['id'],
        day: json['day'],
        tk: json['tk'],
        net: json['net'],
        coins: json['coins'],
        facility: json['facility'],
        package: json['package'],
      );
}

//
// "id": 105,
// "day": "7 Days",
// "tk": 198,
// "net": "14.3 GB",
// "coins": 163,
// "facility": "10% bonus included",
// "package": "new"

// 1aa8d9c218bbcf9fe2d9

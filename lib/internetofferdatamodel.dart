class InterOfferDataModel {
  //
  // "id": 105,
  // "day": "7 Days",
  // "tk": 198,
  // "net": "14.3 GB",
  // "coins": 163,
  // "facility": "10% bonus included",
  // "package": "new"

  final int? id;
  final String? day;
  final int? tk;
  final String? net;
  final int? coins;
  final String? facility;
  final String? package;

  const InterOfferDataModel({
    this.id = 0,
    this.day = "",
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

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['day'] = this.day;
//     data['tk'] = this.tk;
//     data['net'] = this.net;
//     data['coins'] = this.coins;
//     data['facility'] = this.facility;
//     data['package'] = this.package;
//     return data;
//   }
// }

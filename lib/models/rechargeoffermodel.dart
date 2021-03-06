class RechargeOfferDataModel {
/*
{
  "id": 1001,
  "minute": 1000,
  "day": 30,
  "tk": 796,
  "net": "25 GB",
  "cashback": 80,
  "bonus": ""
}
*/

  int? id;
  int? minute;
  int? day;
  int? tk;
  String? net;
  int? cashback;
  String? bonus;

  RechargeOfferDataModel({
    this.id,
    this.minute,
    this.day,
    this.tk,
    this.net,
    this.cashback,
    this.bonus,
  });

  static RechargeOfferDataModel fromJson(json) => RechargeOfferDataModel(
        id: json['id'],
        minute: json['minute'],
        day: json['day'],
        tk: json['tk'],
        net: json['net'],
        cashback: json['cashback'],
        bonus: json['bonus'],
      );
}

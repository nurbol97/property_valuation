import 'package:property_valuation/pages/home_page/screen/view/data/model/user.dart';

class OrderModel {
  int id;
  double housing_price;
  int bid_number;
  DateTime bid_date;
  String housing_type;
  String housing_address;
  double housing_area;
  String bid_type;
  int userId;

  OrderModel(
      {this.id,
      this.housing_price,
      this.bid_number,
      this.bid_date,
      this.housing_type,
      this.housing_address,
      this.housing_area,
      this.bid_type,
      this.userId});

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        id: json["id"],
        housing_price: json["housing_price"],
        bid_number: json["bid_number"],
        bid_date: DateTime.parse(json["bid_date"]),
        housing_type: json["housing_type"],
        housing_address: json["housing_address"],
        housing_area: json["housing_area"],
        bid_type: json["bid_type"],
        userId: json["userId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "housing_price": housing_price,
        "bid_number": bid_number,
        "bid_date": bid_date.toIso8601String(),
        "housing_type": housing_type,
        "housing_address": housing_address,
        "housing_area": housing_area,
        "bid_type": bid_type,
        "userId": userId,
      };
}

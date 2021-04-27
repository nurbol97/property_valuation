import 'package:property_valuation/pages/home_page/screen/view/data/model/user.dart';

class OrderModel {
  int id;
  int housing_price;
  int bid_number;
  DateTime bid_date;
  String housing_type;
  String housing_address;
  int housing_area;
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

  static List<OrderModel> orderModelList(List objectList) {
    List<OrderModel> orderModels = [];
    for (var i in objectList) {
      orderModels.add(OrderModel.fromMap(i));
    }
    return orderModels;
  }

  factory OrderModel.fromMap(Map object) {
    return OrderModel(
      id: object["id"],
      housing_price: object["housing_price"],
      bid_number: object["bid_number"],
      bid_date: DateTime.parse(object["bid_date"]),
      housing_type: object["housing_type"],
      housing_address: object["housing_address"],
      housing_area: object["housing_area"],
      bid_type: object["bid_type"],
      userId: object["userId"],
    );
  }

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

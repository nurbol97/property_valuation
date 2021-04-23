import 'dart:convert';

import 'package:property_valuation/pages/home_page/screen/view/data/model/order.dart';
import 'package:http/http.dart' as http;

class OrderRepository {
  Future<List<OrderModel>> fetchOrders() async {
    print('Vyzvan');
    String url = 'http://192.168.8.101:8000/api/bids/';

    try {
      dynamic response = await http.get(Uri.parse(url), headers: {
        "id": '1',
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json; charset=UTF-8',
      });
      print(" Responsex ${response.body}");
      print(response);
      Map object = json.decode(response.body);

      return (object['Bids'] as List)
          .map((i) => OrderModel.fromJson(i))
          .toList();
      // List<OrderModel> orderData = [];
      // response.body.forEach((orderData) {
      //   orderData.add(new OrderModel(
      //     id: orderData['id'],
      //     housing_price: orderData['housing_price'],
      //     bid_number: orderData['bid_number'],
      //     bid_date: DateTime.parse(orderData['bid_date']),
      //     housing_type: orderData['housing_type'],
      //     housing_address: orderData['housing_address'],
      //     housing_area: orderData['housing_area'],
      //     bid_type: orderData['bid_type'],
      //     userId: orderData['userId'],
      //   ));
      // });
      // print(orderData);
      // return orderData;
    } catch (err) {
      throw err;
    }
  }
}

import 'package:property_valuation/pages/home_page/screen/view/data/model/order.dart';
import 'package:http/http.dart' as http;

class OrderRepository {
  Future<List<OrderModel>> fetchOrders() async {
    String url = 'http://192.168.100.156:8000/api/bids';

    try {
      dynamic response = await http.get(Uri.parse(url), headers: {"id": '1'});
      List<OrderModel> orderData = [];
      response.forEach((orderData) {
        orderData.add(new OrderModel(
          id: orderData['id'],
          housing_price: orderData['housing_price'],
          bid_number: orderData['bid_number'],
          bid_date: DateTime.parse(orderData['bid_date']),
          housing_type: orderData['housing_type'],
          housing_address: orderData['housing_address'],
          housing_area: orderData['housing_area'],
          bid_type: orderData['bid_type'],
          userId: orderData['userId'],
        ));
      });

      return orderData;
    } catch (err) {
      throw err;
    }
  }
}

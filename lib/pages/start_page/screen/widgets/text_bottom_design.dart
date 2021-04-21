import 'package:flutter/material.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:property_valuation/pages/home_page/screen/view/data/model/order.dart';
import 'package:property_valuation/routes/app_routes.dart';
import 'package:http/http.dart' as http;

class EntreBottomTextDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Future<List<OrderModel>> fetchOrders() async {
          String url = 'http://192.168.100.156:8000/api/bids/';

          try {
            dynamic response = await http.get(Uri.parse(url), headers: {
              "id": '1',
              'Content-Type': 'application/json; charset=UTF-8',
              'Accept': 'application/json; charset=UTF-8',
            });
            print(response);
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
            print(orderData);
            return orderData;
          } catch (err) {
            throw err;
          }
        }

        fetchOrders();
        Navigator.pushReplacementNamed(context, Routes.HOME);
      },
      child: Text(
        'Отправить еще раз',
        style: TextStyles.orange_text16_w400,
      ),
    );
  }
}

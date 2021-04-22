import 'package:flutter/material.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:property_valuation/pages/home_page/screen/view/data/model/order.dart';
import 'package:property_valuation/pages/home_page/screen/view/data/repositories/order_repository.dart';
import 'package:property_valuation/pages/home_page/screen/view/home_page.dart';
import 'package:property_valuation/routes/app_routes.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EntreBottomTextDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        OrderRepository orderRepository;
        List<OrderModel> _orders = [];

        Future<void> fetchAndSetReminders({int month}) async {
          try {
            _orders = await orderRepository.fetchOrders();
          } catch (err) {
            throw err;
          }
        }

        fetchAndSetReminders();
        print(_orders);
        Navigator.of(context).pushReplacement(
          //new
          new MaterialPageRoute(
            //new

            builder: (context) => new HomePage(
              orders: _orders,
            ), //new
          ), //new
        ); //new
      },
      child: Text(
        'Отправить еще раз',
        style: TextStyles.orange_text16_w400,
      ),
    );
  }
}

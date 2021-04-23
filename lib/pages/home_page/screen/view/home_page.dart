import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:property_valuation/constants/btn_design/entreBtnBlue.dart';

import 'package:property_valuation/constants/colors/colorStyle.dart';

import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:property_valuation/pages/home_page/screen/view/data/model/order.dart';

import 'package:property_valuation/pages/home_page/screen/widget/orderfield_card.dart';
import 'package:property_valuation/pages/home_page/screen/widget/search_widget.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_valuation/routes/app_routes.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
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

// Column(
//               children: [
//                 Container(
//                   padding: EdgeInsets.only(left: 20, top: 25, right: 20),
//                   color: ColorStyles.background_color,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         child: Text(
//                           'Мои заявки',
//                           style: TextStyles.black30_w700,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 20.h,
//                       ),
//                       SearchWidget(
//                         controller: controller,
//                         onChanged: onChanged,
//                       ),
//                       EntreBtnDesignBlue(
//                         text: "Начать осмотр",
//                         onSave: () {
//                           Navigator.pushNamed(context, Routes.OSMOTR1);
//                         },
//                         isActivated: true,
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             );

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    Function onChanged;
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<List<OrderModel>>(
          future: fetchOrders(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return OrderFieldCard(snapshot.data[index]);
                },
              );
            } else if (snapshot.hasError) {
              print(
                snapshot.error.toString(),
              );
              return Text(
                snapshot.error.toString(),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },

          // child: SingleChildScrollView(
          // child: Container(
          //   padding: EdgeInsets.only(left: 20, top: 25, right: 20),
          //   color: ColorStyles.background_color,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Container(
          //         child: Text(
          //           'Мои заявки',
          //           style: TextStyles.black30_w700,
          //         ),
          //       ),
          //       SizedBox(
          //         height: 20.h,
          //       ),
          //       SearchWidget(
          //         controller: controller,
          //         onChanged: onChanged,
          //       ),
          //     ],
          //   ),
          // ),
          // ),
        ),
      ),
    );
  }
}

//OrderFieldCard(
//                     id: snapshot.data[index].id,

//                     housing_price: snapshot.data[index].housing_price,
//       bid_number: snapshot.data[index].bid_number,
//       bid_date:snapshot.data[index].bid_date,
//       housing_type:snapshot.data[index].housing_type,
//       housing_address: snapshot.data[index].housing_address,
//       housing_area: snapshot.data[index].housing_area,
//       bid_type: snapshot.data[index].bid_type,
//       userId: snapshot.data[index].userId,
//                   );

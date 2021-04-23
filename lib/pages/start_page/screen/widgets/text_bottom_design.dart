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
        Navigator.of(context).pushReplacement(
          //new
          new MaterialPageRoute(
            //new

            builder: (context) => new HomePage(), //new
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

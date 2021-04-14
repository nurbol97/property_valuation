import 'package:flutter/material.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:property_valuation/routes/app_routes.dart';

class EntreBottomTextDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacementNamed(context, Routes.HOME);
      },
      child: Text(
        'Отправить еще раз',
        style: TextStyles.orange_text16_w400,
      ),
    );
  }
}

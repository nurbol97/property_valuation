import 'package:flutter/material.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';

class OrderField extends StatelessWidget {
  String text;
  Icon icon;
  OrderField({this.icon, this.text});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        icon,
        SizedBox(
          width: 15,
        ),
        Text(
          text,
          style: TextStyles.small14_black_w400_space5,
        ),
      ],
    );
  }
}

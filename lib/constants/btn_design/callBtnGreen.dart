import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:property_valuation/constants/colors/colorStyle.dart';

class CallBtGreenDesign extends StatelessWidget {
  final String text;
  final Function function;
  CallBtGreenDesign({this.text, this.function});
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(25.0)),
      minWidth: 328,
      height: 50,
      buttonColor: ColorStyles.green_color,
      child: RaisedButton(
        elevation: 0,
        disabledTextColor: Colors.white,
        textColor: Colors.white,
        onPressed: function,
        child: Container(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Roboto'),
          ),
        ),
      ),
    );
  }
}

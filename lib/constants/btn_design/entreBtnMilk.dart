import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:property_valuation/constants/colors/colorStyle.dart';

class EntreBtnDesignMilk extends StatelessWidget {
  String text;
  Function function;
  EntreBtnDesignMilk(this.text, this.function);
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(25.0)),
      minWidth: 328,
      height: 50,
      buttonColor: ColorStyles.brand_milk_color,
      child: RaisedButton(
        elevation: 0,
        disabledTextColor: Colors.white,
        textColor: ColorStyles.orange_color,
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

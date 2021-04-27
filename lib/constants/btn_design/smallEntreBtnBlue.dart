import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';

class SmallEntreBtnBlue extends StatelessWidget {
  String text;
  Function function;
  SmallEntreBtnBlue({this.text, this.function});
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(25.0)),
      minWidth: 91,
      height: 40,
      buttonColor: ColorStyles.blue_color.withOpacity(0.12),
      child: RaisedButton(
        elevation: 0,
        disabledTextColor: Colors.white,
        textColor: Colors.white,
        onPressed: function,
        child: Container(
          child: Text(
            text,
            style: TextStyles.blue_14_w500,
          ),
        ),
      ),
    );
  }
}

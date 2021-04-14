import 'package:flutter/material.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';

class EditBtnDesign extends StatelessWidget {
  String text;
  Function function;
  EditBtnDesign({this.text, this.function});
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(25.0),
          side: BorderSide(
            color: ColorStyles.orange_color,
            width: 2,
          )),
      minWidth: 328,
      height: 40,
      buttonColor: ColorStyles.brand_white_color,
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

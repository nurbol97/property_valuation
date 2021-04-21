import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EntreBtnDesignBlue extends StatelessWidget {
  final String text;
  final Function onSave;
  bool isActivated = false;
  EntreBtnDesignBlue({this.text, this.onSave, this.isActivated});
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(12.0)),
      minWidth: 335.w,
      height: 48,
      buttonColor: ColorStyles.blue_color,
      child: RaisedButton(
        elevation: 0,
        disabledTextColor: ColorStyles.disabled_text_color,
        disabledColor: ColorStyles.disabled_button_color,
        textColor: Colors.white,
        onPressed: isActivated ? onSave : null,
        child: Container(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'UIDisplay'),
          ),
        ),
      ),
    );
  }
}

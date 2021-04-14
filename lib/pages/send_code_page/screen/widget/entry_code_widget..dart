import 'dart:async';

import 'package:flutter/material.dart';

import 'package:pinput/pin_put/pin_put.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';

class EntryCodeDesign extends StatelessWidget {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      color: ColorStyles.brand_grey.withOpacity(0.15),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PinPut(
      separator: SizedBox(width: 10.0),
      fieldsCount: 4,
      eachFieldWidth: 66,
      textStyle: TextStyles.blue_text36_w400,
      fieldsAlignment: MainAxisAlignment.spaceEvenly,
      eachFieldHeight: 70,
      onSubmit: (String pin) => _showSnackBar(pin, context),
      focusNode: _pinPutFocusNode,
      controller: _pinPutController,
      submittedFieldDecoration: _pinPutDecoration.copyWith(
        borderRadius: BorderRadius.circular(15.0),
        color: ColorStyles.blue_color.withOpacity(0.15),
      ),
      selectedFieldDecoration: _pinPutDecoration,
      followingFieldDecoration: _pinPutDecoration.copyWith(
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }

  void _showSnackBar(String pin, BuildContext context) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 3),
      content: Container(
        height: 80.0,
        child: Center(
          child: Text(
            'Pin Submitted. Value: $pin',
            style: const TextStyle(fontSize: 25.0),
          ),
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
    Scaffold.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

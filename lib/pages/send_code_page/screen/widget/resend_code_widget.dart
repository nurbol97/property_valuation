import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';

class ResendCodeText extends StatefulWidget {
  @override
  _ResendCodeTextState createState() => _ResendCodeTextState();
}

class _ResendCodeTextState extends State<ResendCodeText> {
  bool _isVisible = true;
  void _toggle() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 30.00, end: 0),
      duration: Duration(seconds: 30),
      builder: (_, value, child) {
        if (value < 10) {
          return Text("00:0${value.toInt()}",
              style: TextStyles.timer_text_black);
        } else if (value > 10) {
          return Text("00:${value.toInt()}",
              style: TextStyles.timer_text_black);
        }
      },
      onEnd: () {
        setState(() {
          _toggle();
        });
      },
    );
  }
}

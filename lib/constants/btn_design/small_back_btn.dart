import 'package:flutter/material.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';

class SmallBackBtn extends StatelessWidget {
  Icon icon;
  SmallBackBtn({this.icon});
  final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
    primary: Colors.white,
    side: BorderSide(
      color: Color(0xFFE5ECEF),
      width: 1,
    ),
    padding: EdgeInsets.symmetric(horizontal: 8),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: outlineButtonStyle,
      onPressed: () {
        Navigator.pop(context);
      },
      child: icon,
    );
  }
}

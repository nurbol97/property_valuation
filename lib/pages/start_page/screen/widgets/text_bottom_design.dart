import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:url_launcher/url_launcher.dart';

class EntreBottomTextDesign extends StatelessWidget {
  TextStyle defaultStyle = TextStyle(
      fontSize: 14, color: ColorStyles.brand_grey, fontFamily: 'Roboto');
  static const _url = 'https://www.google.com';
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Text("Продолжая вход", style: defaultStyle),
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(text: " вы соглашаетесь ", style: defaultStyle),
            TextSpan(
                text: 'с правилами сервиса ',
                recognizer: new TapGestureRecognizer()
                  ..onTap = () {
                    _launchURL();
                  },
                style: defaultStyle.copyWith(
                    decoration: TextDecoration.underline,
                    color: ColorStyles.brand_orange)),
          ],
        ),
      ),
    ]);
  }

  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
}

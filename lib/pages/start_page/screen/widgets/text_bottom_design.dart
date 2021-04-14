import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:property_valuation/pages/send_code_page/screen/widget/resend_code_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class EntreBottomTextDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('object');
      },
      child: Text(
        'Отправить еще раз',
        style: TextStyles.orange_text16_w400,
      ),
    );
  }
}

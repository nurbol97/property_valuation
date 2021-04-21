import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputPhoneDesign extends StatelessWidget {
  final maskFormatter = new MaskTextInputFormatter(
      mask: '+7 (###) ###-##-##', filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Material(
        elevation: 30.0,
        shadowColor: ColorStyles.blue_color.withOpacity(0.1),
        child: TextFormField(
          autofocus: false,
          maxLines: 1,
          // ignore: missing_return
          validator: (String value) {
            if (value.isEmpty || value.length < 18)
              return 'Пожалуйста введите верный номер телефона';
          },
          keyboardType: TextInputType.phone,
          inputFormatters: [maskFormatter],
          decoration: InputDecoration(
            errorStyle: TextStyle(
              height: 0.3,
            ),
            contentPadding: EdgeInsets.only(
              top: 15.5,
              left: 15,
            ),
            border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(12.0),
                ),
                borderSide: BorderSide.none),

            hintText: 'Пожалуйста введите ваш номер',
            hintStyle: TextStyles.head_small14_grey,
            //labelText: '',
          ),
        ),
      ),
    );
  }
}

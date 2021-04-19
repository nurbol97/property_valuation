import 'package:flutter/material.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputOtherText extends StatelessWidget {
  TextInputType textInputType = TextInputType.text;
  TextEditingController controller;
  String hintTextOut = 'Другое';
  InputOtherText({this.textInputType, this.controller, this.hintTextOut});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 150.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Material(
        elevation: 30.0,
        shadowColor: ColorStyles.blue_color.withOpacity(0.1),
        child: TextFormField(
          autofocus: false,
          maxLines: 1,
          controller: controller,
          // ignore: missing_return
          validator: (String value) {
            if (value.isEmpty || value.length < 18)
              return 'Пожалуйста введите верные данные';
          },
          keyboardType: textInputType,
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

            hintText: hintTextOut,
            hintStyle: TextStyles.head_small14_grey,
            //labelText: '',
          ),
        ),
      ),
    );
  }
}

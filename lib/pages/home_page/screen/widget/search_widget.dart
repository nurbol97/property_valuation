import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController controller;
  final Function onChanged;

  const SearchWidget({Key key, this.controller, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 60.h,
      child: TextField(
        onChanged: (String val) {
          onChanged(val);
        },
        decoration: InputDecoration(
          prefixIcon: IconButton(
            icon: Icon(PropertyValuationIcons.magnifyingglass),
            onPressed: () {
              print('hello');
            },
          ),
          filled: true,
          contentPadding: EdgeInsets.all(24.nsp),
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
                color: ColorStyles.disabled_button_color, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
                color: ColorStyles.disabled_button_color, width: 1.0),
          ),
          hintText: 'Поиск по заявкам',
          hintStyle: TextStyles.head_small14_grey,
        ),
      ),
    );
  }
}

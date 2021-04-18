import 'package:flutter/material.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';

class AddAddressInTheMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      child: Container(
        padding: EdgeInsets.only(right: 25, left: 15),
        width: 335.w,
        height: 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: ColorStyles.blue_color, width: 1.5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Указать адрес на карте',
              style: TextStyles.blue_16_w700.copyWith(letterSpacing: 0.3),
            ),
            Icon(
              PropertyValuationIcons.maptrifold,
              color: ColorStyles.blue_color,
            )
          ],
        ),
      ),
      onTap: () {
        print('tapped');
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddFileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: [4, 4],
      color: ColorStyles.disabled_button_color,
      borderType: BorderType.RRect,
      radius: Radius.circular(8),
      strokeWidth: 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white,
        ),
        padding: EdgeInsets.fromLTRB(16, 30, 16, 30),
        width: 335.w,
        height: 160.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Icon(
                PropertyValuationIcons.file_plus,
                color: ColorStyles.brand_grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Загрузить документ, удостоверяющий личность',
              style: TextStyles.grey_14_w500,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

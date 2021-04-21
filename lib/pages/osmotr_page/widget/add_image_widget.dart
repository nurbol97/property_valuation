import 'package:flutter/material.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:dotted_border/dotted_border.dart';

class AddImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: DottedBorder(
        dashPattern: [4, 4],
        color: ColorStyles.disabled_button_color,
        borderType: BorderType.RRect,
        radius: Radius.circular(8),
        strokeWidth: 1,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          padding: EdgeInsets.fromLTRB(16, 33, 16, 20),
          width: 200,
          height: 130,
          child: Column(
            children: [
              Center(
                child: Icon(
                  PropertyValuationIcons.camera,
                  color: ColorStyles.brand_grey,
                ),
              ),
              Text(
                'Загрузить фото',
                style: TextStyles.grey_14_w500,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        print('tapped');
      },
    );
  }
}

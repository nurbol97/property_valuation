import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:property_valuation/constants/btn_design/small_back_btn.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_valuation/pages/osmotr_page/widget/input_doubleInfo_widget.dart';
import 'package:property_valuation/pages/osmotr_page/widget/input_info_widget.dart';

import 'package:property_valuation/pages/start_page/screen/widgets/input_list_design.dart';
import 'package:property_valuation/routes/app_routes.dart';

class OsmotrPage6DomZemlya extends StatefulWidget {
  String text;
  String hintText;

  void returnText(String text, String hintText) {
    this.text = text;
    this.hintText = hintText;
  }

  @override
  _OsmotrPage6DomZemlyaState createState() => _OsmotrPage6DomZemlyaState();
}

class _OsmotrPage6DomZemlyaState extends State<OsmotrPage6DomZemlya> {
  TextEditingController field1_liter;
  TextEditingController field2_fundament;
  TextEditingController field3_kadastr;
  TextEditingController field4_status;
  TextEditingController field5_area;
  TextEditingController field6_naznachenie;
  TextEditingController field7_ogranichenya;
  TextEditingController field8_delimost;

  List<String> list_field2_fundament = [
    "бетон",
    "Другое",
  ];

  List<String> list_field8_delimost = [
    "делимый",
    "неделимый",
  ];

  String drugoe = '';

  void backController(String text, String hintext) {
    if (hintext == 'Расположение прилегающей территории')
      setState(() {
        drugoe = text;
      });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20, top: 25, right: 20),
            color: ColorStyles.background_color,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 46,
                    height: 46,
                    child: SmallBackBtn(
                      icon: Icon(
                        PropertyValuationIcons.small_left,
                        color: Color(0xFFA5BDC7),
                      ),
                    )),
                SizedBox(
                  height: 25.h,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Акт осмотра объекта недвижимости",
                      style: TextStyles.black_16_w700,
                    ),
                    SizedBox(height: 19.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Характеристика земельного участка',
                          style: TextStyles.black_12_w600,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: ColorStyles.orange_color.withOpacity(0.12),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 26,
                          width: 76,
                          child: Center(
                              child: Text(
                            '6 шаг из 8',
                            style: TextStyles.orange_12_w500,
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Литер',
                      controller: field1_liter,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Фундамент здания',
                      itemsFrom: list_field2_fundament,
                      controller: field2_fundament,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Кадастровый номер',
                      controller: field3_kadastr,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Правовой статус',
                      controller: field4_status,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Площадь, (доли) га',
                      controller: field5_area,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Целевое назначение',
                      controller: field6_naznachenie,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Ограничения в использовании',
                      controller: field7_ogranichenya,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Делимость',
                      itemsFrom: list_field8_delimost,
                      controller: field8_delimost,
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorStyles.blue_color,
        onPressed: () {
          print('asdasd');
          print('${widget.hintText}');
          print('${widget.text}');

          Navigator.pushNamed(context, Routes.OSMOTR7_DOM);
        },
        tooltip: 'Далее',
        child: Icon(PropertyValuationIcons.arrowright),
      ),
    );
  }
}

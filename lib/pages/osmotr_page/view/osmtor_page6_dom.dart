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

class OsmotrPage6Dom extends StatefulWidget {
  String text;
  String hintText;

  void returnText(String text, String hintText) {
    this.text = text;
    this.hintText = hintText;
  }

  @override
  _OsmotrPage6DomState createState() => _OsmotrPage6DomState();
}

class _OsmotrPage6DomState extends State<OsmotrPage6Dom> {
  TextEditingController field1_name_complex;
  TextEditingController field2_ispolzovanie;
  TextEditingController field3_lift;
  TextEditingController field4_sostoyanie_podiezda;
  TextEditingController field5_sostoyanie_santekhniki;

  List<String> list_field2_ispolzovanie = [
    "жилая квартира",
    "нежилая квартира"
  ];

  List<String> list_field3_lift = [
    "Есть",
    "Нет",
  ];
  List<String> list_field4_sostoyanie_podiezda = [
    "отличное",
    "хорошее",
    "удовлетворительное",
    "неудовлетворительное",
    "Другое",
  ];

  List<String> list_field5_sostoyanie_santekhniki = [
    "отличное",
    "хорошее",
    "среднее",
    "удовлетворительное",
    "неудовлетворительное",
    "Другое",
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
                          'Характеристика дома',
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
                      hintTextOut: 'Наименование жилого комплекса',
                      controller: field1_name_complex,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Целевое использование',
                      itemsFrom: list_field2_ispolzovanie,
                      controller: field2_ispolzovanie,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Есть лифт или нет',
                      itemsFrom: list_field3_lift,
                      controller: field3_lift,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Техническое состояние подъезда',
                      itemsFrom: list_field4_sostoyanie_podiezda,
                      controller: field4_sostoyanie_podiezda,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Сантехническое состояние',
                      itemsFrom: list_field5_sostoyanie_santekhniki,
                      controller: field5_sostoyanie_santekhniki,
                      func: widget.returnText,
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

          Navigator.pushNamed(context, Routes.OSMOTR7_KVARTIRA);
        },
        tooltip: 'Далее',
        child: Icon(PropertyValuationIcons.arrowright),
      ),
    );
  }
}

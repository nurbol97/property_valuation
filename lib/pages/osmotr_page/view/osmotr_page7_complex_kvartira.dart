import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:property_valuation/constants/btn_design/small_back_btn.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_valuation/pages/osmotr_page/widget/input_doubleInfo_widget.dart';

import 'package:property_valuation/pages/start_page/screen/widgets/input_list_design.dart';
import 'package:property_valuation/routes/app_routes.dart';

class OsmotrPage7ComplexKvartira extends StatefulWidget {
  String text;
  String hintText;

  void returnText(String text, String hintText) {
    this.text = text;
    this.hintText = hintText;
  }

  @override
  _OsmotrPage7ComplexKvartiraState createState() =>
      _OsmotrPage7ComplexKvartiraState();
}

class _OsmotrPage7ComplexKvartiraState
    extends State<OsmotrPage7ComplexKvartira> {
  TextEditingController field1_planirovka;
  TextEditingController field2_etazh;
  TextEditingController field3_uglovaya;

  List<String> list_field1_planirovka = [
    "обычная",
    "улучшенная",
    "евростандарт",
    "бывшее приватизированное общежитие",
  ];

  List<String> list_field2_etazh = [
    "1",
    "2",
    "3",
    "4",
    "5",
  ];

  List<String> list_field3_uglovaya = [
    "Да",
    "Нет",
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
                          'Характеристика квартиры',
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
                            '7 шаг из 8',
                            style: TextStyles.orange_12_w500,
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Планировка',
                      itemsFrom: list_field1_planirovka,
                      controller: field1_planirovka,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Этаж',
                      itemsFrom: list_field2_etazh,
                      controller: field2_etazh,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Угловая',
                      itemsFrom: list_field3_uglovaya,
                      controller: field3_uglovaya,
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

          Navigator.pushNamed(context, Routes.OSMOTR8_SAVE_OSMOTR);
        },
        tooltip: 'Далее',
        child: Icon(PropertyValuationIcons.arrowright),
      ),
    );
  }
}

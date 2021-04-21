import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:property_valuation/constants/btn_design/small_back_btn.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_valuation/pages/osmotr_page/widget/input_doubleInfo_widget.dart';
import 'package:property_valuation/pages/osmotr_page/widget/order_room_count.dart';
import 'package:property_valuation/pages/osmotr_page/widget/add_image_widget.dart';

import 'package:property_valuation/pages/osmotr_page/widget/input_info_widget.dart';
import 'package:property_valuation/pages/osmotr_page/widget/input_othertext_widget.dart';

import 'package:property_valuation/pages/start_page/screen/widgets/input_list_design.dart';
import 'package:property_valuation/routes/app_routes.dart';

class OsmotrPage4 extends StatefulWidget {
  String text;
  String hintText;

  void returnText(String text, String hintText) {
    this.text = text;
    this.hintText = hintText;
  }

  @override
  _OsmotrPage4State createState() => _OsmotrPage4State();
}

class _OsmotrPage4State extends State<OsmotrPage4> {
  TextEditingController field1_eletktro;
  TextEditingController field2_gaz;
  TextEditingController field3_voda_holod;
  TextEditingController field4_voda_teploe;
  TextEditingController field5_kanalizacia;
  TextEditingController field6_otoplenie;
  TextEditingController field7_podval;
  TextEditingController field7_podval_text2;
  List<String> list_field1_eletktro = [
    "Центральное",
    "Автономное",
    "Отсутствует",
  ];

  List<String> list_field2_gaz = [
    "Центральный",
    "Привозной",
    "Отсутствует",
    "Другое"
  ];

  List<String> list_field3_voda_holod = [
    "Центральное",
    "Автономное",
    "Отсутствует",
  ];

  List<String> list_field4_voda_teploe = [
    "Центральное",
    "Автономное",
    "Отсутствует",
  ];

  List<String> list_field5_kanalizacia = [
    "Центральная",
    "Автономная",
    "Отсутствует",
  ];

  List<String> list_field6_otoplenie = [
    "Центральное",
    "Автономное",
    "Отсутствует",
  ];

  List<String> list_field7_podval = [
    "Есть",
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
                          'Инженерное обеспечение',
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
                            '4 шаг из 7',
                            style: TextStyles.orange_12_w500,
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Электроэнергия',
                      itemsFrom: list_field1_eletktro,
                      controller: field1_eletktro,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Газоснабжение',
                      itemsFrom: list_field2_gaz,
                      controller: field2_gaz,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Холодное водоснабжение',
                      itemsFrom: list_field3_voda_holod,
                      controller: field3_voda_holod,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Горячее водоснабжение',
                      itemsFrom: list_field4_voda_teploe,
                      controller: field4_voda_teploe,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Канализация',
                      itemsFrom: list_field5_kanalizacia,
                      controller: field5_kanalizacia,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Отопление',
                      itemsFrom: list_field6_otoplenie,
                      controller: field6_otoplenie,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputDoubleInfoDesign(
                      hintTextBack: 'Подвальные помещения',
                      itemsFrom: list_field7_podval,
                      controller: field7_podval,
                      func: widget.returnText,
                      text2Controller: field7_podval_text2,
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

          Navigator.pushNamed(context, Routes.OSMOTR5);
        },
        tooltip: 'Далее',
        child: Icon(PropertyValuationIcons.arrowright),
      ),
    );
  }
}

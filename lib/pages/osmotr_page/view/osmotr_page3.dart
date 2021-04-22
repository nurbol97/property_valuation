import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:property_valuation/constants/btn_design/small_back_btn.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_valuation/pages/osmotr_page/widget/order_room_count.dart';
import 'package:property_valuation/pages/osmotr_page/widget/add_image_widget.dart';

import 'package:property_valuation/pages/osmotr_page/widget/input_info_widget.dart';
import 'package:property_valuation/pages/osmotr_page/widget/input_othertext_widget.dart';

import 'package:property_valuation/pages/start_page/screen/widgets/input_list_design.dart';
import 'package:property_valuation/routes/app_routes.dart';

class OsmotrPage3 extends StatefulWidget {
  String text;
  String hintText;

  void returnText(String text, String hintText) {
    this.text = text;
    this.hintText = hintText;
  }

  @override
  _OsmotrPage3State createState() => _OsmotrPage3State();
}

class _OsmotrPage3State extends State<OsmotrPage3> {
  TextEditingController field1_data_ocenki;
  TextEditingController field2_kommerc_object;
  TextEditingController field3_material_sten;
  TextEditingController field4_special_comfort;
  TextEditingController field5_kuda_okna;
  TextEditingController field6_uroven_shuma;
  TextEditingController field7_security_nalichie;
  TextEditingController field8_area_size;
  TextEditingController field9_potolok_height;
  TextEditingController field10_living_area;
  TextEditingController field11_room_count;
  TextEditingController field11_room1Areacontroller;
  TextEditingController field11_room2Areacontroller;
  TextEditingController field11_room3Areacontroller;
  TextEditingController field12_kuhnya;
  TextEditingController field13_balkon;
  TextEditingController field14_vanna;
  TextEditingController field15_toilet;
  TextEditingController field16_pomeshenie;
  TextEditingController field17_osobennosti;
  TextEditingController field18_telephone;

  List<String> list_field1_data_ocenki = [
    "Проживание",
    "Аренда",
    "Коммерческое деятельность",
  ];

  List<String> list_field2_kommerc_object = [
    "Возможно",
    "Невозможно",
  ];

  List<String> list_field3_material_sten = [
    "Кирпич",
    "Панель",
    "Монолит",
    "Керамзитобетон",
    "Другое"
  ];

  List<String> list_field4_special_comfort = [
    "Автостоянка",
    "Магазин",
    "Рынок",
    "Остановка",
    "Другое"
  ];

  List<String> list_field5_kuda_okna = [
    "Проезжая часть",
    "Двор",
    "Внутренняя улица",
    "Другое"
  ];

  List<String> list_field6_uroven_shuma = [
    "Высокий",
    "Средний",
    "Низкий",
  ];

  List<String> list_field7_security_nalichie = [
    "Да",
    "Нет",
  ];
  List<String> list_field11_room_count = [
    "1",
    "2",
    "3",
  ];

  List<String> list_field18_telephone = [
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
                            '3 шаг из 8',
                            style: TextStyles.orange_12_w500,
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InputListDesign(
                      hintTextBack:
                          'Фактическое использование объекта на дату оценки',
                      itemsFrom: list_field1_data_ocenki,
                      controller: field1_data_ocenki,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack:
                          'Возможное коммерческое использование объекта',
                      itemsFrom: list_field2_kommerc_object,
                      controller: field2_kommerc_object,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Материал стен',
                      itemsFrom: list_field3_material_sten,
                      controller: field3_material_sten,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Material(
                      elevation: 30.0,
                      shadowColor: ColorStyles.blue_color.withOpacity(0.1),
                      child: Container(
                        alignment: Alignment.center,
                        height: 140,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            AddImageWidget(),
                            Container(
                              width: 20,
                              color: ColorStyles.blue_color.withOpacity(0.05),
                            ),
                            AddImageWidget(),
                            Container(
                              width: 20,
                              color: ColorStyles.blue_color.withOpacity(0.05),
                            ),
                            AddImageWidget(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Специальные удобства',
                      itemsFrom: list_field4_special_comfort,
                      controller: field4_special_comfort,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Куда выходят окна',
                      itemsFrom: list_field5_kuda_okna,
                      controller: field5_kuda_okna,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Уровень шума',
                      itemsFrom: list_field6_uroven_shuma,
                      controller: field6_uroven_shuma,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Есть наличие охранной системы или нет',
                      itemsFrom: list_field7_security_nalichie,
                      controller: field7_security_nalichie,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Общая площадь (кв/метра)',
                      textInputType: TextInputType.number,
                      controller: field8_area_size,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Высота потолка (метр)',
                      textInputType: TextInputType.number,
                      controller: field9_potolok_height,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Жилая площадь (кв/метра)',
                      textInputType: TextInputType.number,
                      controller: field10_living_area,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    OrderRoomCountDesign(
                      hintTextOut: 'Количество комнат',
                      controller: field11_room_count,
                      itemsFrom: list_field11_room_count,
                      room1Areacontroller: field11_room1Areacontroller,
                      room2Areacontroller: field11_room2Areacontroller,
                      room3Areacontroller: field11_room3Areacontroller,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Кухня (кв/метра)',
                      textInputType: TextInputType.number,
                      controller: field12_kuhnya,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Material(
                      elevation: 30.0,
                      shadowColor: ColorStyles.blue_color.withOpacity(0.1),
                      child: Container(
                        alignment: Alignment.center,
                        height: 140,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            AddImageWidget(),
                            Container(
                              width: 20,
                              color: ColorStyles.blue_color.withOpacity(0.05),
                            ),
                            AddImageWidget(),
                            Container(
                              width: 20,
                              color: ColorStyles.blue_color.withOpacity(0.05),
                            ),
                            AddImageWidget(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Есть балкон или нет',
                      itemsFrom: list_field18_telephone,
                      controller: field13_balkon,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Количество ванных комнат',
                      controller: field14_vanna,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Количество туалетных комнат',
                      controller: field15_toilet,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Вспомогательные помещения',
                      controller: field16_pomeshenie,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Material(
                      elevation: 30.0,
                      shadowColor: ColorStyles.blue_color.withOpacity(0.1),
                      child: Container(
                        alignment: Alignment.center,
                        height: 140,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            AddImageWidget(),
                            Container(
                              width: 20,
                              color: ColorStyles.blue_color.withOpacity(0.05),
                            ),
                            AddImageWidget(),
                            Container(
                              width: 20,
                              color: ColorStyles.blue_color.withOpacity(0.05),
                            ),
                            AddImageWidget(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Особенности планировки',
                      controller: field17_osobennosti,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Есть наличие охранной системы или нет',
                      itemsFrom: list_field18_telephone,
                      controller: field18_telephone,
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

          Navigator.pushNamed(context, Routes.OSMOTR4);
        },
        tooltip: 'Далее',
        child: Icon(PropertyValuationIcons.arrowright),
      ),
    );
  }
}

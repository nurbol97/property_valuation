import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:property_valuation/constants/btn_design/small_back_btn.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:property_valuation/pages/osmotr_page/widget/input_info_widget.dart';
import 'package:property_valuation/pages/osmotr_page/widget/input_othertext_widget.dart';

import 'package:property_valuation/pages/start_page/screen/widgets/input_list_design.dart';

class OsmotrPage2 extends StatefulWidget {
  String text;
  String hintText;

  void returnText(String text, String hintText) {
    this.text = text;
    this.hintText = hintText;
  }

  @override
  _OsmotrPage2State createState() => _OsmotrPage2State();
}

class _OsmotrPage2State extends State<OsmotrPage2> {
  TextEditingController streetController;

  TextEditingController homeNumberController;

  TextEditingController sosednieStreetController;

  TextEditingController raspolozhenieController;

  TextEditingController busController;

  TextEditingController eduController;

  TextEditingController drugoeRaspolojenieController;

  List<String> dostup = [
    "Нур-султан (Астана)",
    "Алматы",
    "Атырау",
    "Актау",
    "Актобе",
    "Караганда",
    "Кокшетау",
    "Костанай",
    "Кызылорда",
    "Павлодар",
    "Петропавловск",
    "Талдыкорган",
    "Тараз",
    "Туркестан",
    "Уральск",
    "Усть-Каменогорск",
  ];

  List<String> bus = [
    "Высокая",
    "Хорошая",
    "Средняя",
    "Удовлетворительная",
    "Низкая",
  ];

  List<String> raspolojenie = [
    "На проезжей части",
    "Вблизи дороги",
    "Далеко от дороги",
    "Другое",
  ];

  List<String> ucheba = [
    "Школы",
    "Дет/сады",
    "ВУЗЫ",
  ];

  List<String> chistota = [
    "Отличная",
    "Хорошая",
    "Удовлетворительная",
    "Неудовлетворительная",
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
                          'Прилегающая территория',
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
                            '2 шаг из 8',
                            style: TextStyles.orange_12_w500,
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Год постройки',
                      textInputType: TextInputType.streetAddress,
                      controller: streetController,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Доступность общественного транспорта',
                      itemsFrom: bus,
                      controller: busController,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Близость учебных учреждений',
                      itemsFrom: ucheba,
                      controller: eduController,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Наименование учебного учреждения',
                      textInputType: TextInputType.text,
                      controller: streetController,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Близость к торговым и культурным центрам',
                      textInputType: TextInputType.text,
                      controller: streetController,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Инфраструктура района',
                      textInputType: TextInputType.text,
                      controller: streetController,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Расположение прилегающей территории',
                      itemsFrom: raspolojenie,
                      controller: raspolozhenieController,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Чистота прилегающей территории',
                      itemsFrom: chistota,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputOtherText(
                      controller: drugoeRaspolojenieController,
                      hintTextOut: 'Комментарий',
                    ),
                    SizedBox(
                      height: 20.h,
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
        },
        tooltip: 'Далее',
        child: Icon(PropertyValuationIcons.arrowright),
      ),
    );
  }
}

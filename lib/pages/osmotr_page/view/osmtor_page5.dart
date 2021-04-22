import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:property_valuation/constants/btn_design/small_back_btn.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_valuation/pages/osmotr_page/widget/input_doubleInfo_widget.dart';
import 'package:property_valuation/pages/osmotr_page/widget/input_info_widget.dart';
import 'package:property_valuation/pages/osmotr_page/widget/radio_button_design.dart';

import 'package:property_valuation/pages/start_page/screen/widgets/input_list_design.dart';
import 'package:property_valuation/routes/app_routes.dart';

class OsmotrPage5 extends StatefulWidget {
  String text;
  String hintText;

  void returnText(String text, String hintText) {
    this.text = text;
    this.hintText = hintText;
  }

  @override
  _OsmotrPage5State createState() => _OsmotrPage5State();
}

class _OsmotrPage5State extends State<OsmotrPage5> {
  int selectedRadioTile;

  @override
  void initState() {
    super.initState();

    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  TextEditingController field1_vhod_dver;
  TextEditingController field2_mezh_dver;
  TextEditingController field3_okna;
  TextEditingController field4_pol;
  TextEditingController field5_potolok;
  TextEditingController field6_vnutr_stena;
  TextEditingController field7_naruzh_stena;
  TextEditingController field8_santekhnika;
  TextEditingController field9_vodoprod_truby;
  TextEditingController field10_kanalizacia_truby;
  TextEditingController field11_shetchik_vody;
  TextEditingController field12_radiatory;
  TextEditingController field13_planirovka;
  TextEditingController field14_god_remonta;
  TextEditingController field15_dopolnitelno;
  List<String> list_field3_okna = [
    "Деревянные",
    "Металлопластиковые",
    "Зарешеченные",
    "Алюминиевые"
  ];

  List<String> list_field4_pol = [
    "Линолеум",
    "Деревянные",
    "Паркет",
    "Ламинат",
    "Кафель",
    "Другое",
  ];

  List<String> list_field5_potolok = [
    "Побелка",
    "Эмульсия",
    "Подвесной",
    "Левкас",
    "Натяжной"
  ];

  List<String> list_field6_vnutr_stena = [
    "Обои",
    "Побелка",
    "Левкас",
    "Кафель",
    "Другое",
  ];

  List<String> list_field7_naruzh_stena = [
    "Расшивка швов",
    "Декоративная отделка",
    "Обшит сайдингом",
    "Деревянные",
  ];

  List<String> list_field8_santekhnika = [
    "Есть",
    "Нет",
  ];

  List<String> list_field9_vodoprod_truby = [
    "Пластиковые",
    "Металлические",
  ];

  List<String> list_field10_kanalizacia_truby = [
    "Пластиковые",
    "Металлические",
  ];
  List<String> list_field11_shetchik_vody = [
    "Есть",
    "Нет",
  ];

  List<String> list_field12_radiatory = [
    "Алюминиевые",
    "Железные",
    "Чугунные",
  ];

  String drugoe = '';

  void backController(String text, String hintext) {
    if (hintext == 'Расположение прилегающей территории')
      setState(() {
        drugoe = text;
      });
  }

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
                          'Внутреннее состояние недвижимости',
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
                            '5 шаг из 8',
                            style: TextStyles.orange_12_w500,
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Входная дверь',
                      controller: field1_vhod_dver,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    RadioButtonDesign(),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Межкомнатные двери',
                      controller: field2_mezh_dver,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    RadioButtonDesign(),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Окна',
                      itemsFrom: list_field3_okna,
                      controller: field3_okna,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    RadioButtonDesign(),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Пол',
                      itemsFrom: list_field4_pol,
                      controller: field4_pol,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    RadioButtonDesign(),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Потолок',
                      itemsFrom: list_field5_potolok,
                      controller: field5_potolok,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    RadioButtonDesign(),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Внутренняя отделка стен',
                      itemsFrom: list_field6_vnutr_stena,
                      controller: field6_vnutr_stena,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    RadioButtonDesign(),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Наружная отделка стен',
                      itemsFrom: list_field7_naruzh_stena,
                      controller: field7_naruzh_stena,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    RadioButtonDesign(),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Есть сантехника или нет',
                      itemsFrom: list_field8_santekhnika,
                      controller: field8_santekhnika,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Водопроводные трубы',
                      itemsFrom: list_field9_vodoprod_truby,
                      controller: field9_vodoprod_truby,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    RadioButtonDesign(),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Канализационные трубы',
                      itemsFrom: list_field10_kanalizacia_truby,
                      controller: field10_kanalizacia_truby,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    RadioButtonDesign(),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Есть наличие счетчиков воды или нет',
                      itemsFrom: list_field10_kanalizacia_truby,
                      controller: field10_kanalizacia_truby,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputListDesign(
                      hintTextBack: 'Радиаторы',
                      itemsFrom: list_field12_radiatory,
                      controller: field12_radiatory,
                      func: widget.returnText,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    RadioButtonDesign(),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Наличие перепланировки / узаконенность',
                      controller: field13_planirovka,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Год последнего кап. ремонта',
                      controller: field14_god_remonta,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Дополнительно',
                      controller: field15_dopolnitelno,
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

          Navigator.pushNamed(context, Routes.OSMOTR6_DOM);
        },
        tooltip: 'Далее',
        child: Icon(PropertyValuationIcons.arrowright),
      ),
    );
  }
}

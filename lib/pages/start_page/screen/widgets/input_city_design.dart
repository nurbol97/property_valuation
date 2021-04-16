import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:property_valuation/constants/textStyle/textStyle.dart';

class InputCityDesign extends StatefulWidget {
  @override
  _InputCityDesignState createState() => _InputCityDesignState();
}

final controller = TextEditingController();
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

class _InputCityDesignState extends State<InputCityDesign> {
  void initState() {
    super.initState();
  }

  String country_id;
  List<String> country = [
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
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      child: Material(
        elevation: 30.0,
        shadowColor: ColorStyles.blue_color.withOpacity(0.1),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              DropDownField(
                onValueChanged: (dynamic value) {
                  country_id = value;
                },
                value: country_id,
                required: false,
                hintText: 'Пожалуйста выберите ваш город:',
                hintStyle: TextStyles.head_small14_grey,
                textStyle: TextStyles.small14_black_w400,
                items: country,
              ),
            ]),
      ),
    );
  }
}

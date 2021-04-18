import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:property_valuation/constants/textStyle/textStyle.dart';

class InputRaionyDesign extends StatefulWidget {
  @override
  _InputRaionyDesignState createState() => _InputRaionyDesignState();
}

final controller = TextEditingController();
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

class _InputRaionyDesignState extends State<InputRaionyDesign> {
  void initState() {
    super.initState();
  }

  String raion_id;
  List<String> raiony_almaty = [
    "Алатауский",
    "Алмалинский",
    "Ауэзовский",
    "Бостандыкский",
    "Жетысуский",
    "Медеуский",
    "Наурызбайский",
    "Турксибский",
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
                  raion_id = value;
                },
                value: raion_id,
                required: false,
                hintText: 'Пожалуйста выберите ваш район:',
                hintStyle: TextStyles.head_small14_grey,
                textStyle: TextStyles.small14_black_w400,
                items: raiony_almaty,
              ),
            ]),
      ),
    );
  }
}

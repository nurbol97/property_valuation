import 'package:direct_select_flutter/direct_select_container.dart';
import 'package:direct_select_flutter/direct_select_item.dart';
import 'package:direct_select_flutter/direct_select_list.dart';
import 'package:flutter/material.dart';
import 'package:property_valuation/constants/btn_design/entreBtnBlue.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:property_valuation/pages/start_page/screen/widgets/input_city_design.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_valuation/routes/app_routes.dart';
import 'input_phone_design.dart';

class InputForm extends StatefulWidget {
  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  TextEditingController textEditingController = TextEditingController();

  GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'One';
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 25, 20, 34),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Добро пожаловать',
                  style: TextStyles.head_text_black,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Пожалуйста введите ваш телефон:',
                  style: TextStyles.small14_black,
                ),
                SizedBox(
                  height: 15,
                ),
                InputPhoneDesign(),
                SizedBox(
                  height: 20,
                ),
                InputCityDesign(),
              ],
            ),
            SizedBox(
              height: 209.h,
            ),
            EntreBtnDesignBlue(
              text: 'Далее',
              isActivated: true,
              onSave: () {
                Navigator.pushNamed(context, Routes.SCREEN_CODE);
                if (_formKey.currentState.validate()) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Success")));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

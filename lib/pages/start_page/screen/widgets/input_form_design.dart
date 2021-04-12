import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:property_valuation/constants/btn_design/entreBtnBlue.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:property_valuation/pages/start_page/screen/widgets/text_bottom_design.dart';

import 'input_phone_design.dart';

class InputForm extends StatefulWidget {
  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  TextEditingController textEditingController = TextEditingController();

  GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    _formKey = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 25, 20, 34),
      child: Form(
        key: _formKey,
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
                  height: 16,
                ),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
            EntreBtnDesignBlue(
                text: 'Далее',
                onSave: () {
                  if (_formKey.currentState.validate()) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text("Success")));
                  }
                }),
          ],
        ),
      ),
    );
  }
}

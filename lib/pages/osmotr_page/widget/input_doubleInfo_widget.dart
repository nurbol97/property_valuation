import 'dart:math';

import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:property_valuation/pages/osmotr_page/widget/input_info_widget.dart';

import 'package:property_valuation/pages/osmotr_page/widget/input_othertext_widget.dart';

class InputDoubleInfoDesign extends StatefulWidget {
  List<String> itemsFrom = [];
  String hintTextBack;
  TextEditingController controller;
  TextEditingController text2Controller;
  Function(String text, String hintText) func;
  InputDoubleInfoDesign(
      {this.hintTextBack,
      this.itemsFrom,
      this.controller,
      this.text2Controller,
      this.func});

  @override
  _InputDoubleInfoDesignState createState() => _InputDoubleInfoDesignState();
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

class _InputDoubleInfoDesignState extends State<InputDoubleInfoDesign> {
  void initState() {
    super.initState();
  }

  TextEditingController drugoeRaspolojenieController;
  String id_item;
  bool isVisible = false;
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
                id_item = value;
                widget.func(id_item.toString(), widget.hintTextBack);
                if (value == 'Есть') {
                  setState(() {
                    isVisible = true;
                  });
                } else {
                  setState(() {
                    isVisible = false;
                  });
                }
              },
              value: id_item,
              required: false,
              hintText: widget.hintTextBack,
              hintStyle: TextStyles.head_small14_grey,
              textStyle: TextStyles.small14_black_w400,
              items: widget.itemsFrom,
              controller: widget.controller,
            ),
            isVisible
                ? Column(
                    children: [
                      Divider(
                        indent: 22,
                        endIndent: 22,
                      ),
                      InputInfoDesign(
                        hintTextOut: 'Площадь подвального помещения',
                        controller: widget.text2Controller,
                        textInputType: TextInputType.number,
                      ),
                    ],
                  )
                : SizedBox(
                    height: 1,
                  ),
          ],
        ),
      ),
    );
  }
}

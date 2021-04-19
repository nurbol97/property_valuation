import 'dart:math';

import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:property_valuation/pages/osmotr_page/view/osmotr_page2.dart';
import 'package:property_valuation/pages/osmotr_page/widget/input_othertext_widget.dart';

class InputListDesign extends StatefulWidget {
  List<String> itemsFrom = [];
  String hintTextBack;
  TextEditingController controller;
  Function(String text, String hintText) func;
  InputListDesign(
      {this.hintTextBack, this.itemsFrom, this.controller, this.func});

  @override
  _InputListDesignState createState() => _InputListDesignState();
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

class _InputListDesignState extends State<InputListDesign> {
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
                if (value == 'Другое') {
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
                      Container(
                        height: 20,
                        color: ColorStyles.blue_color.withOpacity(0.05),
                      ),
                      InputOtherText(
                        controller: drugoeRaspolojenieController,
                        hintTextOut: 'Другое',
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

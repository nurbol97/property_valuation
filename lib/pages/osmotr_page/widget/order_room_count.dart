import 'dart:math';

import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:property_valuation/pages/osmotr_page/widget/input_info_widget.dart';

import 'package:property_valuation/pages/osmotr_page/widget/input_othertext_widget.dart';

class OrderRoomCountDesign extends StatefulWidget {
  List<String> itemsFrom = [];
  String hintTextOut;
  TextEditingController controller;
  TextEditingController room1Areacontroller;
  TextEditingController room2Areacontroller;
  TextEditingController room3Areacontroller;
  Function(String text, String hintText) func;
  OrderRoomCountDesign(
      {this.hintTextOut,
      this.itemsFrom,
      this.controller,
      this.func,
      this.room1Areacontroller,
      this.room2Areacontroller,
      this.room3Areacontroller});

  @override
  _OrderRoomCountDesignState createState() => _OrderRoomCountDesignState();
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

class _OrderRoomCountDesignState extends State<OrderRoomCountDesign> {
  void initState() {
    super.initState();
  }

  TextEditingController drugoeRaspolojenieController;
  String id_item;
  bool isVisible1 = false;
  bool isVisible2 = false;
  bool isVisible3 = false;
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
                widget.func(id_item.toString(), widget.hintTextOut);
                switch (value) {
                  case "1":
                    setState(() {
                      isVisible1 = true;
                      isVisible2 = false;
                      isVisible3 = false;
                    });

                    break;
                  case "2":
                    setState(() {
                      isVisible1 = false;
                      isVisible2 = true;
                      isVisible3 = false;
                    });

                    break;
                  case "3":
                    setState(() {
                      isVisible1 = false;
                      isVisible2 = false;
                      isVisible3 = true;
                    });

                    break;
                }
              },
              value: id_item,
              required: false,
              hintText: widget.hintTextOut,
              hintStyle: TextStyles.head_small14_grey,
              textStyle: TextStyles.small14_black_w400,
              items: widget.itemsFrom,
              controller: widget.controller,
            ),
            if (isVisible1 == true)
              Column(
                children: [
                  Container(
                    height: 20,
                    color: ColorStyles.blue_color.withOpacity(0.05),
                  ),
                  InputInfoDesign(
                    hintTextOut: 'Площадь жилой комнаты 1',
                    controller: widget.room1Areacontroller,
                  ),
                ],
              )
            else if (isVisible2 == true)
              Column(
                children: [
                  Container(
                    height: 20,
                    color: ColorStyles.blue_color.withOpacity(0.05),
                  ),
                  InputInfoDesign(
                    hintTextOut: 'Площадь жилой комнаты 1',
                    controller: widget.room1Areacontroller,
                  ),
                  Container(
                    height: 20,
                    color: ColorStyles.blue_color.withOpacity(0.05),
                  ),
                  InputInfoDesign(
                    hintTextOut: 'Площадь жилой комнаты 2',
                    controller: widget.room2Areacontroller,
                  ),
                ],
              )
            else if (isVisible3 == true)
              Column(
                children: [
                  Container(
                    height: 20,
                    color: ColorStyles.blue_color.withOpacity(0.05),
                  ),
                  InputInfoDesign(
                    hintTextOut: 'Площадь жилой комнаты 1',
                    controller: widget.room1Areacontroller,
                    textInputType: TextInputType.number,
                  ),
                  Container(
                    height: 20,
                    color: ColorStyles.blue_color.withOpacity(0.05),
                  ),
                  InputInfoDesign(
                    hintTextOut: 'Площадь жилой комнаты 2',
                    controller: widget.room2Areacontroller,
                    textInputType: TextInputType.number,
                  ),
                  Container(
                    height: 20,
                    color: ColorStyles.blue_color.withOpacity(0.05),
                  ),
                  InputInfoDesign(
                    hintTextOut: 'Площадь жилой комнаты 3',
                    controller: widget.room3Areacontroller,
                    textInputType: TextInputType.number,
                  ),
                ],
              )
            else
              SizedBox(
                height: 1,
              ),
          ],
        ),
      ),
    );
  }
}

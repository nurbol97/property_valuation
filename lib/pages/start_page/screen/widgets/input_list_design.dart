import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:property_valuation/constants/textStyle/textStyle.dart';

class InputListDesign extends StatefulWidget {
  List<String> itemsFrom = [];
  String hintTextBack;
  InputListDesign({this.hintTextBack, this.itemsFrom});
  @override
  _InputListDesignState createState() => _InputListDesignState();
}

final controller = TextEditingController();
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

class _InputListDesignState extends State<InputListDesign> {
  void initState() {
    super.initState();
  }

  String id_item;

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
                },
                value: id_item,
                required: false,
                hintText: widget.hintTextBack,
                hintStyle: TextStyles.head_small14_grey,
                textStyle: TextStyles.small14_black_w400,
                items: widget.itemsFrom,
              ),
            ]),
      ),
    );
  }
}

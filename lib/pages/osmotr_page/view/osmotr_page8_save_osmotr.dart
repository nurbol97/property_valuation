import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:property_valuation/constants/btn_design/entreBtnBlue.dart';
import 'package:property_valuation/constants/btn_design/small_back_btn.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_valuation/pages/osmotr_page/widget/add_file_widget.dart';
import 'package:property_valuation/pages/osmotr_page/widget/added_file_widget.dart';
import 'package:property_valuation/pages/osmotr_page/widget/input_dateinfo_widget.dart';
import 'package:property_valuation/pages/osmotr_page/widget/input_doubleInfo_widget.dart';
import 'package:property_valuation/pages/osmotr_page/widget/input_info_widget.dart';

import 'package:property_valuation/pages/start_page/screen/widgets/input_list_design.dart';
import 'package:property_valuation/routes/app_routes.dart';

class OsmotrPage8SaveOsmotr extends StatefulWidget {
  String text;
  String hintText;

  void returnText(String text, String hintText) {
    this.text = text;
    this.hintText = hintText;
  }

  @override
  _OsmotrPage8SaveOsmotrState createState() => _OsmotrPage8SaveOsmotrState();
}

class _OsmotrPage8SaveOsmotrState extends State<OsmotrPage8SaveOsmotr> {
  TextEditingController field1_osmotr_proizel;
  TextEditingController field2_data_osmotra;
  TextEditingController field3_prisutsvoval;
  TextEditingController field4_file;

  bool fileIsVisible = false;
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
                          'Характеристика дома',
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
                            '8 шаг из 8',
                            style: TextStyles.orange_12_w500,
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Осмотр произвел',
                      controller: field1_osmotr_proizel,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputDateInfoDesign(
                      hintTextOut: '09.03.2021',
                      controller: field2_data_osmotra,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'При осмотре присутствовал (Ф.И.О)',
                      controller: field3_prisutsvoval,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Visibility(
                      visible: !fileIsVisible,
                      child: InkWell(
                        child: AddFileWidget(),
                        onTap: () {
                          setState(() {
                            fileIsVisible = !fileIsVisible;
                          });
                        },
                      ),
                      replacement: InkWell(
                        child: AddedFileDesign(),
                        onTap: () {
                          setState(() {
                            fileIsVisible = !fileIsVisible;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    EntreBtnDesignBlue(
                        text: 'Завершить осмотр',
                        isActivated: true,
                        onSave: fileIsVisible
                            ? () {
                                Navigator.pushNamed(context, Routes.HOME);

                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text("Success")));
                              }
                            : null),
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
    );
  }
}

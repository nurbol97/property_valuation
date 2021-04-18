import 'package:flutter/material.dart';
import 'package:property_valuation/constants/btn_design/small_back_btn.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:property_valuation/pages/osmotr_page/widget/add_address_map_widget.dart';
import 'package:property_valuation/pages/osmotr_page/widget/add_image_widget.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_valuation/pages/osmotr_page/widget/input_raiony_widget.dart';
import 'package:property_valuation/pages/osmotr_page/widget/input_info_widget.dart';
import 'package:property_valuation/pages/start_page/screen/widgets/input_city_design.dart';
import 'package:property_valuation/routes/app_routes.dart';

class OsmotrPage1 extends StatelessWidget {
  TextEditingController streetController;
  TextEditingController homeNumberController;
  TextEditingController sosednieStreetController;
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
                          'Месторасположение',
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
                            '1 шаг из 8',
                            style: TextStyles.orange_12_w500,
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 140,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          AddImageWidget(),
                          SizedBox(
                            width: 20,
                          ),
                          AddImageWidget(),
                          SizedBox(
                            width: 20,
                          ),
                          AddImageWidget(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    AddAddressInTheMap(),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputCityDesign(),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputRaionyDesign(),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Пожалуйста введите вашу улицу',
                      textInputType: TextInputType.streetAddress,
                      controller: streetController,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Номер дома',
                      textInputType: TextInputType.number,
                      controller: homeNumberController,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InputInfoDesign(
                      hintTextOut: 'Граничащие и соседние улицы',
                      textInputType: TextInputType.number,
                      controller: sosednieStreetController,
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
          Navigator.pushNamed(context, Routes.OSMOTR2);
        },
        tooltip: 'Далее',
        child: Icon(PropertyValuationIcons.arrowright),
      ),
    );
  }
}

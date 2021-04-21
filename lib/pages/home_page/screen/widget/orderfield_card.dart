import 'package:flutter/material.dart';
import 'package:property_valuation/constants/btn_design/entreBtnBlue.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:property_valuation/pages/home_page/screen/widget/order_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_valuation/routes/app_routes.dart';

class OrderFieldCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30, top: 30),
      padding: EdgeInsets.fromLTRB(25, 0, 0, 25),
      width: 334.w,
      height: 454,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: ColorStyles.blue_color.withOpacity(0.05),
            offset: Offset(0, 4),
            spreadRadius: 1.0,
            blurRadius: 22.0,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Данные заказа',
                style: TextStyles.head_small16_black
                    .copyWith(fontWeight: FontWeight.w700, letterSpacing: 1),
              ),
              Container(
                height: 60,
                width: 86.w,
                decoration: BoxDecoration(
                    color: ColorStyles.number_text_color,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(15),
                    )),
                child: Center(
                  child: Text(
                    '№23',
                    style: TextStyles.black_small16_w400,
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(right: 25, top: 10),
            child: Column(
              children: <Widget>[
                OrderField(
                  icon: Icon(PropertyValuationIcons.usercircle),
                  text: "Зарлыков Темирлан Кайратович",
                ),
                SizedBox(
                  height: 20.h,
                ),
                OrderField(
                  icon: Icon(PropertyValuationIcons.usercircle),
                  text: "8 апреля 2021",
                ),
                SizedBox(
                  height: 20.h,
                ),
                OrderField(
                  icon: Icon(PropertyValuationIcons.house),
                  text: "Квартира",
                ),
                SizedBox(
                  height: 20.h,
                ),
                OrderField(
                  icon: Icon(PropertyValuationIcons.mappin),
                  text: "Жандосова / 27",
                ),
                SizedBox(
                  height: 23.h,
                ),
                OrderField(
                  icon: Icon(PropertyValuationIcons.mappin),
                  text: "70 кв/метра",
                ),
                SizedBox(
                  height: 23.h,
                ),
                OrderField(
                  icon: Icon(PropertyValuationIcons.chattext),
                  text: "Осмотр",
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '20 00 000 ₸',
                      style: TextStyles.black24_w900,
                    ),
                    SizedBox(
                      height: 46,
                      width: 46,
                      child: FlatButton(
                        padding: EdgeInsets.only(left: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        color: ColorStyles.green_color.withOpacity(0.12),
                        onPressed: () {},
                        child: Icon(
                          PropertyValuationIcons.phone,
                          color: ColorStyles.green_color,
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                EntreBtnDesignBlue(
                  text: "Начать осмотр",
                  onSave: () {
                    Navigator.pushNamed(context, Routes.OSMOTR1);
                  },
                  isActivated: true,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

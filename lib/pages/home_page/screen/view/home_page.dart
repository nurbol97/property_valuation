import 'package:flutter/material.dart';
import 'package:property_valuation/constants/btn_design/entreBtnBlue.dart';

import 'package:property_valuation/constants/colors/colorStyle.dart';

import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:property_valuation/pages/home_page/screen/view/data/model/order.dart';

import 'package:property_valuation/pages/home_page/screen/widget/orderfield_card.dart';
import 'package:property_valuation/pages/home_page/screen/widget/search_widget.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_valuation/routes/app_routes.dart';

class HomePage extends StatelessWidget {
  List<OrderModel> orders;
  HomePage({this.orders});
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    Function onChanged;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, top: 25, right: 20),
              color: ColorStyles.background_color,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Мои заявки',
                      style: TextStyles.black30_w700,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SearchWidget(
                    controller: controller,
                    onChanged: onChanged,
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
            // orders != null
            //     ? ListView.builder(
            //         padding: EdgeInsets.zero,
            //         itemCount: orders.length,
            //         itemBuilder: (context, index) {
            //           return OrderFieldCard(orders[index]);
            //         },
            //       )
            //     : Center(
            //         child: Container(child: CircularProgressIndicator()),
            //       ),
          ],
        ),
        // child: SingleChildScrollView(
        // child: Container(
        //   padding: EdgeInsets.only(left: 20, top: 25, right: 20),
        //   color: ColorStyles.background_color,
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Container(
        //         child: Text(
        //           'Мои заявки',
        //           style: TextStyles.black30_w700,
        //         ),
        //       ),
        //       SizedBox(
        //         height: 20.h,
        //       ),
        //       SearchWidget(
        //         controller: controller,
        //         onChanged: onChanged,
        //       ),
        //     ],
        //   ),
        // ),
        // ),
      ),
    );
  }
}

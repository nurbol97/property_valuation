import 'package:flutter/material.dart';
import 'package:property_valuation/constants/btn_design/small_back_btn.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:property_valuation/pages/home_page/screen/widget/search_widget.dart';
import 'package:property_valuation/pages/send_code_page/screen/widget/resend_code_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    Function onChanged;
    return Scaffold(
      body: SafeArea(
        child: Container(
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
            ],
          ),
        ),
      ),
    );
  }
}

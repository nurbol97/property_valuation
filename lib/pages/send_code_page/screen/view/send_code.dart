import 'package:flutter/material.dart';
import 'package:property_valuation/constants/btn_design/small_back_btn.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:property_valuation/pages/send_code_page/screen/widget/entry_code_widget..dart';
import 'package:property_valuation/pages/send_code_page/screen/widget/resend_code_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_valuation/pages/start_page/screen/widgets/text_bottom_design.dart';

class SendCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, top: 25),
          color: Colors.white,
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
                height: 35.h,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ResendCodeText(),
                  SizedBox(height: 15.h),
                  Text(
                    'Введите проверочный код, указанный в',
                    style: TextStyles.head_small16_w500_black,
                  ),
                  Text(
                    'полученном сообщении',
                    style: TextStyles.head_small16_w500_black,
                  ),
                  SizedBox(height: 60.h),
                  EntryCodeDesign(),
                  SizedBox(height: 30.h),
                  EntreBottomTextDesign(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:property_valuation/constants/colors/colorStyle.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:property_valuation/pages/send_code_page/screen/widget/resend_code_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SendCodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
      primary: Colors.white,
      side: BorderSide(
        color: Color(0xFFE5ECEF),
        width: 1,
      ),
      padding: EdgeInsets.symmetric(horizontal: 8),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );

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
                child: OutlinedButton(
                  style: outlineButtonStyle,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    PropertyValuationIcons.small_left,
                    color: Color(0xFFA5BDC7),
                  ),
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Center(child: ResendCodeText()),
              SizedBox(height: 15.h),
              Center(
                child: Text(
                  'Введите проверочный код, указанный в',
                  style: TextStyles.head_small16_w500_black,
                ),
              ),
              Center(
                child: Text(
                  'полученном сообщении',
                  style: TextStyles.head_small16_w500_black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

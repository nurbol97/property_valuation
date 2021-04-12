import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_valuation/pages/start_page/screen/widgets/input_form_design.dart';

class StartPoint extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                'assets/img/background_auth.png',
                width: 420.w,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: 420.w,
                decoration: BoxDecoration(
                  color: Color(0xFFF6F9FF),
                ),
                child: InputForm(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

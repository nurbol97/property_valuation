import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_valuation/pages/home_page/screen/view/home_page.dart';
import 'package:property_valuation/pages/osmotr_page/view/osmotr_page1.dart';
import 'package:property_valuation/pages/osmotr_page/view/osmotr_page2.dart';
import 'package:property_valuation/pages/osmotr_page/view/osmtor_page3.dart';
import 'package:property_valuation/pages/send_code_page/screen/view/send_code.dart';
import 'package:property_valuation/pages/start_page/screen/view/startPoint.dart';
import 'package:property_valuation/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 960),
      allowFontScaling: false,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StartPoint(),
        routes: {
          Routes.AUTH: (_) => StartPoint(),
          Routes.SCREEN_CODE: (_) => SendCodePage(),
          Routes.HOME: (_) => HomePage(),
          Routes.OSMOTR1: (_) => OsmotrPage1(),
          Routes.OSMOTR2: (_) => OsmotrPage2(),
          Routes.OSMOTR3: (_) => OsmotrPage3(),
        },
        onUnknownRoute: (RouteSettings settings) {
          return MaterialPageRoute(builder: (_) => SendCodePage());
        },
      ),
    );
  }
}

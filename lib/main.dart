import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_valuation/pages/home_page/screen/view/home_page.dart';
import 'package:property_valuation/pages/osmotr_page/view/osmotr_page1.dart';
import 'package:property_valuation/pages/osmotr_page/view/osmotr_page2.dart';
import 'package:property_valuation/pages/osmotr_page/view/osmotr_page3.dart';
import 'package:property_valuation/pages/osmotr_page/view/osmotr_page4.dart';
import 'package:property_valuation/pages/osmotr_page/view/osmotr_page5.dart';
import 'package:property_valuation/pages/osmotr_page/view/osmotr_page6_complex_dom.dart';
import 'package:property_valuation/pages/osmotr_page/view/osmotr_page6_dom_zemlya.dart';
import 'package:property_valuation/pages/osmotr_page/view/osmotr_page7_complex_kvartira.dart';
import 'package:property_valuation/pages/osmotr_page/view/osmotr_page7_dom.dart';
import 'package:property_valuation/pages/osmotr_page/view/osmotr_page8_save_osmotr.dart';

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
          Routes.OSMOTR4: (_) => OsmotrPage4(),
          Routes.OSMOTR5: (_) => OsmotrPage5(),
          Routes.OSMOTR6_COMPLEX_DOM: (_) => OsmotrPage6ComplexDom(),
          Routes.OSMOTR7_COMPLEX_KVARTIRA: (_) => OsmotrPage7ComplexKvartira(),
          Routes.OSMOTR6_DOM_ZEMLYA: (_) => OsmotrPage6DomZemlya(),
          Routes.OSMOTR7_DOM: (_) => OsmotrPage7Dom(),
          Routes.OSMOTR8_SAVE_OSMOTR: (_) => OsmotrPage8SaveOsmotr(),
        },
        onUnknownRoute: (RouteSettings settings) {
          return MaterialPageRoute(builder: (_) => SendCodePage());
        },
      ),
    );
  }
}

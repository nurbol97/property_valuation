import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          Routes.HOME: (_) => StartPoint(),
        },
        onUnknownRoute: (RouteSettings settings) {
          return MaterialPageRoute(builder: (_) => StartPoint());
        },
      ),
    );
  }
}

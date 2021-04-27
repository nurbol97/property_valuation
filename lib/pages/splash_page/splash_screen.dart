import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:property_valuation/constants/btn_design/entreBtnBlue.dart';
import 'package:property_valuation/constants/btn_design/smallEntreBtnBlue.dart';
import 'package:property_valuation/constants/btn_design/small_back_btn.dart';
import 'package:property_valuation/constants/icon/property_valuation_icons.dart';
import 'package:property_valuation/constants/textStyle/textStyle.dart';
import 'package:property_valuation/pages/send_code_page/screen/widget/entry_code_widget..dart';
import 'package:property_valuation/pages/send_code_page/screen/widget/resend_code_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_valuation/pages/start_page/screen/widgets/text_bottom_design.dart';
import 'package:property_valuation/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    AnimatedContainer buildDot({int index}) {
      return AnimatedContainer(
        duration: Duration(milliseconds: 200),
        margin: EdgeInsets.only(right: 15),
        height: 5,
        width: 5,
        decoration: BoxDecoration(
          color: currentPage == index ? Colors.blue : Colors.grey,
          borderRadius: BorderRadius.circular(3),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                child: PageView(
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 40, 20, 35),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              child: Text(
                                'Пропустить',
                                style: TextStyles.grey_14_w500,
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, Routes.AUTH);
                              },
                            ),
                          ),
                          SizedBox(
                            height: 83.h,
                          ),
                          SvgPicture.asset(
                            'assets/img/phone.svg',
                            width: 180,
                            height: 170,
                          ),
                          SizedBox(
                            height: 80.h,
                          ),
                          Text(
                            'Property Valuation',
                            style: TextStyles.head_small16_black
                                .copyWith(fontSize: 18, letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Text(
                            'Приложение, позволяющее провести полный',
                            style: TextStyles.grey_14_w500,
                          ),
                          Text(
                            'осмотр недвижимости на месте, используя',
                            style: TextStyles.grey_14_w500,
                          ),
                          Text(
                            'только свой мобильный телефон.',
                            style: TextStyles.grey_14_w500,
                          ),
                          SizedBox(
                            height: 170.h,
                          ),
                          SmallEntreBtnBlue(
                            text: 'Далее',
                            function: () {
                              pageController.animateToPage(1,
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.easeOut);
                            },
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              3,
                              (index) => buildDot(index: index),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 40, 20, 35),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              child: Text(
                                'Пропустить',
                                style: TextStyles.grey_14_w500,
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, Routes.AUTH);
                              },
                            ),
                          ),
                          SizedBox(
                            height: 83.h,
                          ),
                          SvgPicture.asset(
                            'assets/img/files.svg',
                            width: 180,
                            height: 170,
                          ),
                          SizedBox(
                            height: 80.h,
                          ),
                          Text(
                            'Об акте осмотра',
                            style: TextStyles.head_small16_black
                                .copyWith(fontSize: 18, letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Text(
                            'Нужно пошагово заполнить все поля в акте',
                            style: TextStyles.grey_14_w500,
                          ),
                          Text(
                            'осмотра и по завершении вся информация',
                            style: TextStyles.grey_14_w500,
                          ),
                          Text(
                            'будет отражена в отчете об осмотре',
                            style: TextStyles.grey_14_w500,
                          ),
                          SizedBox(
                            height: 170.h,
                          ),
                          SmallEntreBtnBlue(
                            text: 'Далее',
                            function: () {
                              pageController.animateToPage(2,
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.easeOut);
                            },
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              3,
                              (index) => buildDot(index: index),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 40, 20, 35),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: InkWell(
                              child: Text(
                                'Пропустить',
                                style: TextStyles.grey_14_w500,
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, Routes.AUTH);
                              },
                            ),
                          ),
                          SizedBox(
                            height: 83.h,
                          ),
                          SvgPicture.asset(
                            'assets/img/video.svg',
                            width: 180,
                            height: 170,
                          ),
                          SizedBox(
                            height: 80.h,
                          ),
                          Text(
                            'Видео инструкция',
                            style: TextStyles.head_small16_black
                                .copyWith(fontSize: 18, letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Text(
                            'Видео инструкция по заполнению одного из',
                            style: TextStyles.grey_14_w500,
                          ),
                          Text(
                            'шага акта осмотра',
                            style: TextStyles.grey_14_w500,
                          ),
                          SizedBox(
                            height: 180.h,
                          ),
                          SmallEntreBtnBlue(
                            text: 'Начать',
                            function: () {
                              Navigator.pushNamed(context, Routes.AUTH);
                            },
                          ),
                          SizedBox(
                            height: 40.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              3,
                              (index) => buildDot(index: index),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

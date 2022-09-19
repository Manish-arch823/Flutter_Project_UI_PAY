import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_ui_swap/biPay/register_2.dart';
import 'package:flutter_ui_swap/biPay/welcome_in_bipay.dart';

import 'dart:ui';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_swipable/flutter_swipable.dart';

import 'biPay/country.dart';
import 'biPay/country_2.dart';
import 'biPay/register.dart';
import 'biPay/register_3.dart';
import 'util/onBoardingScreen.dart';

import 'package:sizer/sizer.dart';
import 'biPay/register_2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        scrollBehavior: AppScrollBehavior(),
        debugShowCheckedModeBanner: false,
        // home: Home(),
        home: onBoardingScreen(),
        // home: welcome_in_bipay()
        // home: MyApp_count_2(),
        // home: registerCard(),
      );
    });
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../intro_screen/intro_page_1.dart';
// import 'intro_screen/intro_page_1.dart';
import '../intro_screen/intro_page.dart';
import '../intro_screen/intro_page_3.dart';
// import '../intro_screen/homepage.dart';
import '../biPay/welcome_in_bipay.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sizer/sizer.dart';

class onBoardingScreen extends StatefulWidget {
  onBoardingScreen({Key? key}) : super(key: key);

  @override
  _onBoardingScreenState createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  PageController _controller = PageController();

  get crossaxisalignment => null;

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    var page_no = [];
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 3);
              });
            },
            children: [
              Intropage1(),
              IntroPage3(),
              IntroPage4(),
            ],
          ),
          Container(
              // alignment: Alignment(0, 85.h),
              // alignment: Alignment(  )),
              padding: EdgeInsets.symmetric(vertical: 93.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: () {
                          _controller.jumpToPage(3);
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text("")),
                    SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: SlideEffect(dotWidth: 1.8.w, dotHeight: 1.8.h)),
                    onLastPage
                        ? GestureDetector(
                            onTap: () {
                              onTap:
                              () {
                                // Navigator.push(context,
                                //     MaterialPageRoute(builder: (context) {
                                //   return HomePage();
                                // }));
                                _controller.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeIn);
                              };
                            },
                            child: Text(""),
                          )
                        : GestureDetector(
                            onTap: () {
                              onTap:
                              () {
                                _controller.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeIn);
                              };
                            },
                            child: Text(""))
                  ]))
        ]));
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

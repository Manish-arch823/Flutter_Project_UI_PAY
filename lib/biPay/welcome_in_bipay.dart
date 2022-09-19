import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

class welcome_in_bipay extends StatefulWidget {
  welcome_in_bipay({Key? key}) : super(key: key);

  @override
  State<welcome_in_bipay> createState() => _welcome_in_bipay();
}

class _welcome_in_bipay extends State<welcome_in_bipay> {
  // get mainaxisalignment => null;

  // get child => null;

  // get submitTextStyle => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        // title: Text(widget.title),

        backgroundColor: Color.fromRGBO(68, 80, 180, 1),
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
            child: Image.asset(
              "icons/icons8-apple-pay-100.png",
              height: 16.h,
              width: 16.w,
              color: Colors.white,
            ),
          ),
        ]),
      ),
      body: Container(
        // color: Color.fromARGB(255, 37, 51, 245),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromRGBO(68, 80, 180, 1),
            Color.fromRGBO(46, 46, 156, 1),
            Color.fromRGBO(59, 68, 173, 1),
            Color.fromRGBO(54, 61, 168, 1),
          ],
          stops: [
            0.1,
            0.6,
            0.7,
            1,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
        )),
        child: Container(
          // padding: EdgeInsets.all(5.h),
          child: ListView(children: <Widget>[
            Padding(
                padding: EdgeInsets.all(5.h),
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: ClipOval(
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(28.w), // Image radius
                        child: Image.asset('image/payment_2.png',
                            height: 20.h, width: 25.w, fit: BoxFit.cover),
                      ),
                    ))),
            SizedBox(
              height: 1.h,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome in biPay",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    'In Hac habitasse platea dictumst \n Vivamus adipiscing fermentum quam \n volutpat aliquam',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: AnimatedButton(
                        height: MediaQuery.of(context).size.height * .09,
                        // height: 9.5.h,
                        width: 76.w,
                        text: 'Sign in ',
                        textStyle:
                            TextStyle(fontSize: 11.5.sp, color: Colors.white),
                        isReverse: true,
                        selectedTextColor: Colors.white,
                        transitionType: TransitionType.CENTER_LR_OUT,
                        // textStyle: 'submitTextStyle',
                        backgroundColor: Color.fromRGBO(59, 68, 173, 1),
                        borderColor: Color.fromRGBO(109, 112, 209, 1),

                        selectedBackgroundColor:
                            Color.fromRGBO(251, 192, 45, 1),

                        borderRadius: 13.5.sp,
                        borderWidth: 2.sp,
                        onPress: () {},
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Padding(
                      padding: EdgeInsets.all(2),
                      child: AnimatedButton(
                        height: MediaQuery.of(context).size.height * 0.1,
                        // height: 10h,

                        width: 76.w,

                        text: ' Register Now ',
                        textStyle:
                            TextStyle(fontSize: 11.5.sp, color: Colors.white),
                        isReverse: true,
                        selectedTextColor: Colors.white,
                        transitionType: TransitionType.CENTER_LR_OUT,
                        // textStyle: 'submitTextStyle',
                        backgroundColor: Color.fromRGBO(59, 68, 173, 1),
                        borderColor: Color.fromRGBO(109, 112, 209, 1),
                        selectedBackgroundColor:
                            Color.fromRGBO(251, 192, 45, 1),

                        borderRadius: 10.sp,
                        borderWidth: 2.sp,
                        onPress: () {
                          print(
                              " Ok OK OK ${MediaQuery.of(context).size.height}");
                        },
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                  ],
                )
                // )
              ],
            )
          ]),
        ),
      ),
    );
  }
}

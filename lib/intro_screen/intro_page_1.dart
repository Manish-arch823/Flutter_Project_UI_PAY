import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

// import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../biPay/welcome_in_bipay.dart';
// import 'homepage.dart';

class Intropage1 extends StatefulWidget {
  Intropage1({Key? key}) : super(key: key);

  @override
  State<Intropage1> createState() => _Intropage1State();
}

class _Intropage1State extends State<Intropage1> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        // title: Text(widget.title),

        backgroundColor: Color.fromRGBO(68, 80, 180, 1),
        title: Padding(
          padding: (screenWidth > 1534)
              ? EdgeInsets.only(top: 90.h, bottom: 90.h)
              : EdgeInsets.only(top: 10.sp, bottom: 4.sp),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Image.asset(
              "icons/icons8-apple-pay-100.png",
              height: 14.h,
              width: 14.w,
              color: Colors.white,
            ),
            TextButton(
              onPressed: () async {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: ((context) => welcome_in_bipay())));
              },
              child: (screenHeight <= 412 || screenWidth == 896)
                  ? Text('Skip',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.roboto(
                          color: Colors.white, fontSize: 13.5.sp))
                  : (screenHeight == 800 || screenWidth >= 1024)
                      ? Text('Skip',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 7.sp))
                      : Text('Skip',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white, fontSize: 11.5.sp)),
            ),
          ]),
        ),
      ),
      body: Container(
        // physics: const NeverScrollableScrollPhysics(),
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
        child: Padding(
          padding: EdgeInsets.all(4.5.h),
          child: ListView(
              physics: (screenWidth >= 1024 && screenHeight >= 600)
                  ? const AlwaysScrollableScrollPhysics()
                  : const NeverScrollableScrollPhysics(),
              // primary: false,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(4.sp),
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      // padding: EdgeInsets.only(left: 10.w, right: 11.w),
                      padding: EdgeInsets.only(
                        left: 20.w,
                        right: 20.w,
                      ),
                      child: ClipOval(
                        child: Material(
                            color: Color.fromRGBO(36, 38, 149, 1),
                            child: SizedBox.fromSize(
                                // size: Size.fromRadius(20.w),

                                // Image radius
                                // child: Image.asset('image/shoping.png',
                                //     fit: BoxFit.cover),
                                child: SvgPicture.asset(
                              'image/pay-mob.svg',
                              width: 300,
                              height: 300,
                              fit: BoxFit.cover,
                            ))
                            // ),
                            ),
                      )),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  // height: MediaQuery.of(context).size.height / ,
                  padding: (screenHeight >= 667)
                      ? EdgeInsets.only(top: 11.h)
                      : EdgeInsets.only(top: 7.h),
                  //( screenWidth >= 1024)?EdgeInsets.only(top: 1.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Easy Top up & Withdraw",
                        style: GoogleFonts.roboto(
                            fontSize: 18.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        // height: screenHeight / 2,
                        child: Text(
                          'In Hac habitasse platea Manish  \n Vivamus adipiscing fermentum quam \n volutpat aliquam integer et elit eget   \n facilists tristique',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontSize: 14.sp, color: Colors.white),
                          // style: (screenHeight <= 896 || screenWidth == 412)
                          //     ? TextStyle(fontSize: 15.sp, color: Colors.white)
                          //     : TextStyle(
                          //         fontSize: 14..sp, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

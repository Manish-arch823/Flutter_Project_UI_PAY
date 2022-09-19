import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:sizer/sizer.dart';
import 'package:wave/wave.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class registerCard extends StatefulWidget {
  registerCard({Key? key}) : super(key: key);

  @override
  _registerCardState createState() => _registerCardState();
}

class _registerCardState extends State<registerCard> {
  GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          // end: Alignment.center,
          end: Alignment(0.0, 0.0),
          colors: [
            // Colors.blue,
            Color.fromRGBO(60, 61, 167, 1),
            Color.fromRGBO(48, 48, 158, 1),
            Color.fromRGBO(67, 68, 174, 1),
            Color.fromRGBO(58, 59, 167, 1),
            Colors.white,
          ],
          stops: [0.1, 0.9, 0.1, 0.4, 0.1],
        )),
        padding: new EdgeInsets.only(
            top: 15.h, bottom: 20.h, left: 10.w, right: 10.w),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Color.fromRGBO(71, 71, 71, 1),
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(13.w), // Image radius
                      child:
                          Image.asset('image/message-2.png', fit: BoxFit.cover),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.6.w,
                ),
                Text(
                  "Input Phone Number to Continue \n the registration",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 7.sp),
                ),
                Padding(
                  // padding: EdgeInsets.only(top: 2.h, left: 2.h, right: 2.w),
                  padding: EdgeInsets.only(left: 12.w, right: 12.w),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 2.h),
                        IntlPhoneField(
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                          onChanged: (phone) {
                            print(phone.completeNumber);
                          },
                          onCountryChanged: (country) {
                            print('Country changed to: ' + country.name);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                AnimatedButton(
                  height: 8.h,
                  width: 56.w,
                  text: ' Register Now ',
                  isReverse: true,
                  selectedTextColor: Colors.white,
                  transitionType: TransitionType.CENTER_LR_OUT,
                  backgroundColor: Color.fromRGBO(59, 68, 173, 1),
                  borderColor: Color.fromRGBO(109, 112, 209, 1),
                  selectedBackgroundColor: Color.fromRGBO(251, 192, 45, 1),
                  borderRadius: 10.sp,
                  borderWidth: 2.sp,
                  onPress: () {
                    _formKey.currentState?.validate();
                  },
                ),
              ],
            ),
          ),
        ));
    // color: Colors.blue);
    // );
  }
}

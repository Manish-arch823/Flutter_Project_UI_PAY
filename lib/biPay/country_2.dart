import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class MyApp_count_2 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp_count_2> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Form(
        key: formKey,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0Xffeeeeee),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  )
                ],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black.withOpacity(0.13))),
            child: Stack(children: [
              InternationalPhoneNumberInput(
                onInputChanged: (value) {},
                // selectorTextStyle: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                formatInput: false,
                selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
                inputDecoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 15, left: 0),
                    border: InputBorder.none,
                    hintText: 'Phone number ',
                    hintStyle: TextStyle(
                      color: Colors.grey.shade500,
                      fontSize: 16,
                    )),
              ),
              Positioned(
                  left: 90,
                  top: 8,
                  bottom: 8,
                  child: Container(
                    height: 40,
                    width: 1,
                    color: Colors.black.withOpacity(0.13),
                  ))
            ])),
      ),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

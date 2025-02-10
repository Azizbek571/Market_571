import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneNumberInput extends StatefulWidget {
  @override
  _PhoneNumberInputState createState() => _PhoneNumberInputState();
}

class _PhoneNumberInputState extends State<PhoneNumberInput> {
  String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: InternationalPhoneNumberInput(
          onInputChanged: (PhoneNumber number) {
            setState(() {
              phoneNumber = number.phoneNumber!;
            });
          },
          selectorConfig: SelectorConfig(
            selectorType: PhoneInputSelectorType.DIALOG,
            setSelectorButtonAsPrefixIcon: true,
            showFlags: true,
          ),
          ignoreBlank: false,
          autoValidateMode: AutovalidateMode.onUserInteraction,
          selectorTextStyle: TextStyle(color: Colors.black),
          initialValue: PhoneNumber(isoCode: 'UZ'), // Uzbekistan default
          formatInput: true,
          keyboardType: TextInputType.phone,
          inputBorder: OutlineInputBorder(),
          countries: ['UZ'], // Restrict to Uzbekistan only
        ),
      ),
    );
  }
}

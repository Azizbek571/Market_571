import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Form(
          child: Center(
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
            Container(
              decoration: BoxDecoration( 
                border: Border()
              ),
              height: 68,
              width: 64,
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: 
                  OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder()
                  
                  
                  
                ),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration( 
                
              ),
              height: 68,
              width: 64,
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: 
                  OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder()
                  
                  
                  
                ),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration( 
                
              ),
              height: 68,
              width: 64,
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: 
                  OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder()
                  
                  
                  
                ),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration( 
                
              ),
              height: 68,
              width: 64,
              child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: 
                  OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder()
                  
                  
                  
                ),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
                    ],
                  ),
          )),
    );
  }
}

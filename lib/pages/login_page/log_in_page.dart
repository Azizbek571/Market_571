import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:market_571/components/autoscrollview.dart';
import 'package:market_571/pages/login_page/otp.dart';
import 'package:market_571/stores/login_controller.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Log_in_Page extends StatefulWidget {
  const Log_in_Page({super.key});

  @override
  State<Log_in_Page> createState() => _Log_in_PageState();
}

class _Log_in_PageState extends State<Log_in_Page> {
  final TextEditingController _controller = TextEditingController(text: "+998");

  final maskFormatter = MaskTextInputFormatter(
    mask: '+998 ## ### ## ##', // Format: +998 XX XXX XX XX
    filter: {"#": RegExp(r'[0-9]')},
  );

  final List<String> imagesRow1 = [
    'assets/images/bananai.png',
    'assets/images/pampers3.png',
    'assets/images/chipsi.png',
    'assets/images/fruits.png',
    'assets/images/pastai.png',
  ];

  final List<String> imagesRow2 = [
    'assets/images/flour1.png',
    'assets/images/rice.png',
    'assets/images/fish.png',
    'assets/images/meat.png',
    'assets/images/flour.png',
  ];

  final List<String> imagesRow3 = [
    'assets/images/bananas.png',
    'assets/images/bread.png',
    'assets/images/fish.png',
    'assets/images/meat.png',
    'assets/images/flour.png',
    'assets/images/bananas.png',
    'assets/images/bread.png',
    'assets/images/fish.png',
    'assets/images/meat.png',
    'assets/images/flour.png',
  ];

  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 300,
                      width: 500,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 30,
                            spreadRadius: 15,
                            offset: Offset(4, 4)),
                        BoxShadow(
                            color: Colors.white,
                            blurRadius: 30,
                            spreadRadius: 15,
                            offset: Offset(-4, -4)),
                      ]),
                    ),

                    Container(
                      height: 300,
                      width: 500,

                      // color: Colors.red,

                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            AutoScrollRow(
                                scrollSpeed: 0.5,
                                imagePaths: imagesRow1), // Forward
                            AutoScrollRow(
                                scrollSpeed: -0.5,
                                imagePaths: imagesRow2), // Backward
                            AutoScrollRow(
                                scrollSpeed: 0.5,
                                imagePaths: imagesRow3), // Forward
                          ],
                        ),
                      ),
                    ),
                    // Column(
                    //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    //   children: [
                    //     SizedBox(height: 270,),
                    //      Container(
                    //       decoration: BoxDecoration(
                    //         color: Color.fromARGB(255, 246, 243, 243),
                    //         borderRadius: BorderRadius.circular(15)
                    //       ),
                    //       height: 100,
                    //       width: 100,
                    //       child:
                    //       Image.asset('assets/images/logo3.png'),
                    //       // Image.asset('assets/images/logo2.webp'),
                    //       )
                    //   ],
                    // ),
                  ],
                ),
              ),
              Container(
                // color: Colors.red,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 30,
                      spreadRadius: 15,
                      offset: Offset(4, 4)),
                  BoxShadow(
                      color: Colors.white,
                      blurRadius: 30,
                      spreadRadius: 15,
                      offset: Offset(-4, -4)),
                ]),

                height: 500,
                width: 400,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 246, 243, 243),
                          borderRadius: BorderRadius.circular(15)),
                      height: 80,
                      width: 80,
                      child: Image.asset('assets/images/logo3.png'),
                      // Image.asset('assets/images/logo2.webp'),
                    ),
                    Text(
                      "Market 571",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Телефон ракамингизни киритинг",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFormField(
                        controller: _controller,
                        keyboardType: TextInputType.phone,
                        maxLength: 13,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'^\+998[0-9]*$'))
                        ],
                        validator: (value) {
                         if (value == null || value.length != 17) { // Length of formatted number
              return "Enter a valid Uzbekistan number (+998 XX XXX XX XX)";
            }
            return null;
                        },
                        decoration: InputDecoration(
                          // labelText: "Тел ракамингизни киритинг",
                         focusedBorder: OutlineInputBorder(),
                         enabledBorder: OutlineInputBorder(),
                         hintText: "Тел ракамингизни киритинг",
                         
                        ),
                        
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        controller: _controller,
                        keyboardType: TextInputType.phone,
                        maxLength: 13,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'^\+998[0-9]*$'))
                        ],
                        validator: (value) {
                         if (value == null || value.length != 17) { // Length of formatted number
              return "Enter a valid Uzbekistan number (+998 XX XXX XX XX)";
            }
            return null;
                        },
                        decoration: InputDecoration(
                          // labelText: "Тел ракамингизни киритинг",
                         focusedBorder: OutlineInputBorder(),
                         enabledBorder: OutlineInputBorder(),
                         hintText: "Тел ракамингизни киритинг",
                         
                        ),
                        
                      ),
                    ),
                    SizedBox(
                      height: 60,
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

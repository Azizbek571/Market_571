import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market_571/pages/login_page/log_in_page.dart';
import 'package:market_571/pages/login_page/otp.dart';
import 'package:market_571/pages/login_page/phonenumber.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
      //  LoginPage()
       Log_in_Page()
      // PhoneNumberInput()
      // OtpForm()
    );
  }
}



  //  'assets/images/bananas.png',
  //   'assets/images/bread.png',
  //   'assets/images/fish.png',
  //   'assets/images/meat.png',
  //   'assets/images/flour.png',
// import 'dart:async';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   final List<String> images = [
//    'assets/images/bananas.png',
//     'assets/images/bread.png',
//     'assets/images/fish.png',
//     'assets/images/meat.png',
//     'assets/images/flour.png',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('True Infinite Scrolling')),
//         body: Column(
//           children: [
//             AutoScrollRow(scrollSpeed: 1.0, imagePaths: images),  // Forward
//             AutoScrollRow(scrollSpeed: -1.0, imagePaths: images), // Backward
//             AutoScrollRow(scrollSpeed: 1.0, imagePaths: images),  // Forward
//           ],
//         ),
//       ),
//     );
//   }
// }



















// import 'dart:async';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   final List<String> imagesRow1 = [
//     'assets/images/bananas.png',
//     'assets/images/bread.png',
//     'assets/images/fish.png',
//     'assets/images/meat.png',
//     'assets/images/flour.png',
//   ];

//   final List<String> imagesRow2 = [
//      'assets/images/bananas.png',
//     'assets/images/bread.png',
//     'assets/images/fish.png',
//     'assets/images/meat.png',
//     'assets/images/flour.png',
//   ];

//   final List<String> imagesRow3 = [
//     'assets/images/bananas.png',
//     'assets/images/bread.png',
//     'assets/images/fish.png',
//     'assets/images/meat.png',
//     'assets/images/flour.png',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Auto Scroll Animation Rows')),
//         body: Column(
//           children: [
//             AutoScrollRow(scrollSpeed: 2.0, imagePaths: imagesRow1), // Forward
//             AutoScrollRow(scrollSpeed: -2.0, imagePaths: imagesRow2), // Backward
//             AutoScrollRow(scrollSpeed: 2.0, imagePaths: imagesRow3), // Forward
//           ],
//         ),
//       ),
//     );
//   }
// }









// import 'dart:async';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Smooth Auto Scroll Animation')),
//         body: AutoScrollRow(),
//       ),
//     );
//   }
// }

// class AutoScrollRow extends StatefulWidget {
//   @override
//   _AutoScrollRowState createState() => _AutoScrollRowState();
// }

// class _AutoScrollRowState extends State<AutoScrollRow> {
//   final ScrollController _scrollController = ScrollController();
//   late Timer _timer;
//   double _scrollSpeed = 100.0; // Pixels to scroll per animation

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) => _startAutoScroll());
//   }

//   void _startAutoScroll() {
//     _timer = Timer.periodic(Duration(seconds: 2), (timer) {
//       if (_scrollController.hasClients) {
//         double maxScroll = _scrollController.position.maxScrollExtent;
//         double nextPosition = _scrollController.offset + _scrollSpeed;

//         if (nextPosition >= maxScroll) {
//           // Reset animation to start
//           _scrollController.animateTo(0,
//               duration: Duration(seconds: 2), curve: Curves.easeInOut);
//         } else {
//           _scrollController.animateTo(nextPosition,
//               duration: Duration(seconds: 2), curve: Curves.easeInOut);
//         }
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _timer.cancel();
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 150, // Set a height for the row
//       child: ListView.builder(
//         controller: _scrollController,
//         scrollDirection: Axis.horizontal,
//         itemCount: 20, // Number of items
//         itemBuilder: (context, index) {
//           return Container(
//             width: 120,
//             margin: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               color: Colors.blue[(index % 9 + 1) * 100],
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Center(
//               child: Text('Item $index', style: TextStyle(color: Colors.white)),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }








   // THIS IS MY CODE

// import 'dart:async';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Auto Scroll Animation Row')),
//         body: AutoScrollRow(),
//       ),
//     );
//   }
// }

// class AutoScrollRow extends StatefulWidget {
//   @override
//   _AutoScrollRowState createState() => _AutoScrollRowState();
// }

// class _AutoScrollRowState extends State<AutoScrollRow> {
//   final ScrollController _scrollController = ScrollController();
//   late Timer _timer;
//   double _scrollPosition = 0.0;
//   final double _scrollSpeed = 2.0; // Speed of scrolling

//   @override
//   void initState() {
//     super.initState();
//     _startAutoScroll();
//   }

//   void _startAutoScroll() {
//     _timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
//       if (_scrollController.hasClients) {
//         _scrollPosition += _scrollSpeed;
//         if (_scrollPosition >= _scrollController.position.maxScrollExtent) {
//           _scrollPosition = 0; // Reset to start for infinite scrolling
//         }
//         _scrollController.jumpTo(_scrollPosition);
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _timer.cancel();
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 150, // Set a height for the row
//       child: ListView.builder(
//         controller: _scrollController,
//         scrollDirection: Axis.horizontal,
//         itemCount: 20, // Number of items
//         itemBuilder: (context, index) {
//           return Container(
//             width: 120,
//             margin: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               color: Colors.blue[(index % 9 + 1) * 100],
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Center(
//               child: Text('Item $index', style: TextStyle(color: Colors.white)),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }



// import 'dart:async';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Auto Scroll Animation Rows')),
//         body: Column(
//           children: [
//             AutoScrollRow(scrollSpeed: 2.0),  // Forward
//             AutoScrollRow(scrollSpeed: -2.0), // Backward
//             AutoScrollRow(scrollSpeed: 2.0),  // Forward
//           ],
//         ),
//       ),
//     );
//   }
// }

// class AutoScrollRow extends StatefulWidget {
//   final double scrollSpeed;

//   AutoScrollRow({required this.scrollSpeed});

//   @override
//   _AutoScrollRowState createState() => _AutoScrollRowState();
// }

// class _AutoScrollRowState extends State<AutoScrollRow> {
//   final ScrollController _scrollController = ScrollController();
//   late Timer _timer;
//   double _scrollPosition = 0.0;

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) => _startAutoScroll());
//   }

//   void _startAutoScroll() {
//     _timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
//       if (_scrollController.hasClients) {
//         _scrollPosition += widget.scrollSpeed;
//         if (_scrollPosition >= _scrollController.position.maxScrollExtent) {
//           _scrollPosition = 0; // Reset to start
//         } else if (_scrollPosition <= 0) {
//           _scrollPosition = _scrollController.position.maxScrollExtent; // Reset to end
//         }
//         _scrollController.jumpTo(_scrollPosition);
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _timer.cancel();
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 120,
//       child: ListView.builder(
//         controller: _scrollController,
//         scrollDirection: Axis.horizontal,
//         itemCount: 20,
//         itemBuilder: (context, index) {
//           return Container(
//             width: 120,
//             margin: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               color: Colors.blue[(index % 9 + 1) * 100],
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Center(
//               child: Text('Item $index', style: TextStyle(color: Colors.white)),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }















// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:market_571/config/images.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LoginScreen(),
//     );
//   }
// }

// class LoginController extends GetxController {
//   var phoneNumber = ''.obs;
//   TextEditingController phoneController = TextEditingController();
// }

// class LoginScreen extends StatelessWidget {
//   final LoginController controller = Get.put(LoginController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               Container(
//                 height: 200,
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Colors.white, Colors.transparent],
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                   ),
//                 ),
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     Image.asset(AppImages.bananas, width: 80),
//                     Image.asset(AppImages.bread, width: 80),
//                     Image.asset(AppImages.chicken, width: 80),
//                     Image.asset(AppImages.meat, width: 80),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Image.asset(AppImages.drinks, height: 80),
//                       const SizedBox(height: 20),
//                       const Text(
//                         "India’s fastest app",
//                         style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                       ),
//                       const Text("Log in or sign up"),
//                       const SizedBox(height: 20),
//                       TextField(
//                         controller: controller.phoneController,
//                         keyboardType: TextInputType.phone,
//                         decoration: InputDecoration(
//                           border: OutlineInputBorder(),
//                           labelText: "Phone Number",
//                           prefixText: "+91 ",
//                         ),
//                         onChanged: (value) => controller.phoneNumber.value = value,
//                       ),
//                       const SizedBox(height: 20),
//                       ElevatedButton(
//                         onPressed: () {
//                           if (controller.phoneController.text.length == 10) {
//                             Get.to(() => OtpScreen());
//                           } else {
//                             Get.snackbar("Error", "Enter a valid phone number");
//                           }
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.orange,
//                           minimumSize: const Size(double.infinity, 50),
//                         ),
//                         child: const Text("Continue"),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class OtpController extends GetxController {
//   var otp = ''.obs;
//   List<TextEditingController> otpControllers =
//       List.generate(4, (index) => TextEditingController());
// }

// class OtpScreen extends StatelessWidget {
//   final OtpController otpController = Get.put(OtpController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("OTP Verification")),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             const Text("We’ve sent a verification code to \n+91 9992330222"),
//             const SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(4, (index) {
//                 return Container(
//                   width: 50,
//                   height: 50,
//                   margin: const EdgeInsets.symmetric(horizontal: 5),
//                   child: TextField(
//                     controller: otpController.otpControllers[index],
//                     keyboardType: TextInputType.number,
//                     textAlign: TextAlign.center,
//                     maxLength: 1,
//                     decoration: const InputDecoration(
//                       counterText: "",
//                       border: OutlineInputBorder(),
//                     ),
//                     onChanged: (value) {
//                       if (value.isNotEmpty && index < 3) {
//                         FocusScope.of(context).nextFocus();
//                       }
//                     },
//                   ),
//                 );
//               }),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 String enteredOtp = otpController.otpControllers
//                     .map((controller) => controller.text)
//                     .join();
//                 if (enteredOtp.length == 4) {
//                   Get.snackbar("Success", "OTP Verified!");
//                 } else {
//                   Get.snackbar("Error", "Enter complete OTP");
//                 }
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.orange,
//                 minimumSize: const Size(double.infinity, 50),
//               ),
//               child: const Text("Verify OTP"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




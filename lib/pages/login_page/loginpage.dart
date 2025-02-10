
import 'package:flutter/material.dart';
import 'package:market_571/config/images.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text("      ",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          
          ),
        ),),
          // backgroundColor: Colors.red,
          body: Column(
            
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
                     
                      
                    //   gradient: LinearGradient(colors:
                    //  [
                    //   Colors.white,
                     
                     
                    //   Colors.transparent,
                     
                    //  ],
                    //  begin: Alignment.topCenter,
                    //  end: Alignment.bottomCenter
                    //  ),
                     
                     ),
                    
                          // height: MediaQuery.sizeOf(context).height,
                          height: 330,
                          width: 400,
                          
                          // color: Colors.yellow,
                          child: SingleChildScrollView(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                   color: Color.fromARGB(255, 243, 252, 252),
                                  height: 130,
                                  width: 100,
                                  child: Image.asset(
                                    AppImages.bread,
                                    // fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                            color: Color.fromARGB(255, 243, 252, 252),

                                  height: 130,
                                  width: 100,
                                  child: Image.asset(
                                    AppImages.flour,
                                    // fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                 color: Color.fromARGB(255, 243, 252, 252),
                                  height: 130,
                                  width: 100,
                                  child: Image.asset(
                                    AppImages.fruits,
                                    // fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                           
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                 color: Color.fromARGB(255, 243, 252, 252),
                                height: 130,
                                width: 100,
                                child: Image.asset(
                                  AppImages.meat,
                                  // fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                color: Color.fromARGB(255, 243, 252, 252),
                                height: 130,
                                width: 100,
                                child: Image.asset(
                                  AppImages.vegetables,
                                  // fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                               color: Color.fromARGB(255, 243, 252, 252),
                                height: 130,
                                width: 100,
                                child: Image.asset(
                                  AppImages.jam,
                                  // fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                               color: Color.fromARGB(255, 243, 252, 252),
                                height: 130,
                                width: 90,
                                child: Image.asset(
                                  AppImages.milk,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                 color: Color.fromARGB(255, 243, 252, 252),
                                    height: 130,
                                    width: 90,
                                    child: Image.asset(
                                      AppImages.fish,
                                      // fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                    color: Color.fromARGB(255, 243, 252, 252),
                                    height: 130,
                                    width: 90,
                                    child: Image.asset(
                                      AppImages.bananas,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                    color: Color.fromARGB(255, 243, 252, 252),
                                    height: 130,
                                    width: 90,
                                    child: Image.asset(
                                      AppImages.caviar,
                                      // fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                    color: Color.fromARGB(255, 243, 252, 252),
                                    height: 130,
                                    width: 90,
                                    child: Image.asset(
                                      AppImages.chicken,
                                      // fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                          ),
                        ),
                        // Container(  
                        //   color: Colors.red,
                        //   height: 400,
                        //   width: 420,
                        // )
                ],
              ),
                // 
            ],
          ),
          
          ),
    );
  }
}

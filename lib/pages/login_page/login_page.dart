import 'package:flutter/material.dart';
import 'package:market_571/config/images.dart';
import 'package:market_571/pages/scrolling.dart';

class Login_page extends StatefulWidget {
  Login_page({super.key});

  @override
  State<Login_page> createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  final children = [
    CardWidget(image: AppImages.bananas),
    CardWidget(image: AppImages.bread),
    CardWidget(image: AppImages.jam),
    CardWidget(image: AppImages.breaduzbek),
    CardWidget(image: AppImages.caviar),
    CardWidget(image: AppImages.vegetables),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.bananas),
    CardWidget(image: AppImages.bananas),
    CardWidget(image: AppImages.bananas),
    CardWidget(image: AppImages.bananas),
    CardWidget(image: AppImages.bananas),
    CardWidget(image: AppImages.bananas),
    CardWidget(image: AppImages.bananas),
    CardWidget(image: AppImages.bananas),
    CardWidget(image: AppImages.bananas),
    CardWidget(image: AppImages.bananas),
    CardWidget(image: AppImages.bananas),
    CardWidget(image: AppImages.bananas),
    CardWidget(image: AppImages.bananas),
    CardWidget(image: AppImages.bananas),
    CardWidget(image: AppImages.bananas),
    CardWidget(image: AppImages.bananas),
    CardWidget(image: AppImages.bananas),
  ];
  final children2 = [
    for (int i = 0; i < 8; i++)
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
    CardWidget(image: AppImages.meat),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: [
              Scrolling(
                      childrenWidth: -500,
                      children: children,
                      scrollDuration: Duration(seconds: 14)
                      ),
                      SizedBox(height: 5,),
              Scrolling(
                      childrenWidth: 500,
                      children: children2,
                      scrollDuration: Duration(seconds: 14)
                      ),
            ],
          ),
        ),
        
                
                
      ),
    );
  }
}

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_tharwat_samy/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../../../settings/presentation layer/settings_view.dart';
import '../../presentation layer/home_view.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0XFF051330),
    color: Color(0xFFF5F5F5),
    animationDuration: Duration(milliseconds: 300),
    onTap: (index) {
    switch (index) {
    case 0:
    Get.to(() => HomeView(),
    transition: Transition.rightToLeftWithFade,
    duration: Duration(milliseconds: 600));
    break;
    case 1:
    Get.to(() => SettingsView(),
    transition: Transition.rightToLeftWithFade,
    duration: Duration(milliseconds: 600));
    break;
    // Add more cases for additional routes if needed
    }
    },
    items: [Icon(Icons.home), Icon(Icons.settings)],
    ),
    body: Container(
        decoration: BoxDecoration(
   color: KmainColor
    ),
      child: Container(
        child:
        Row(children: [
            Container(
            width: 50,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),),
          Text("launch",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),

          Container(
    width: 50,
    height: 100,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.white,
    ),
        ),
      ])
      ),
    ));}
}

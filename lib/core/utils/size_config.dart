import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer';


class SizeConfig{
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;
  void init (BuildContext context)
  {
    screenHeight=MediaQuery.of(context).size.height;
    screenWidth=MediaQuery.of(context).size.width;
    orientation=MediaQuery.of(context).orientation;

    defaultSize =  orientation == Orientation.landscape
        ?  screenHeight! * .024
        : screenWidth! * .024;


  print("this's the default size");
  }
}
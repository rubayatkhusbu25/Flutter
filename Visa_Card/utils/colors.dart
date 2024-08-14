import 'package:flutter/material.dart';

class AppColors{
  static Color bgColor= Colors.green.shade300;
  static List<BoxShadow> shadows =[
    BoxShadow(
      color: Colors.white.withOpacity(0.5),
      spreadRadius: -5,
      blurRadius:25,
      offset: Offset(-9,-9) ,

    ),
    BoxShadow(
      color: Colors.green.shade900.withOpacity(0.3),
      spreadRadius: -5,
      blurRadius:20,
      offset: Offset(7,7) ,

    ),

  ];

}
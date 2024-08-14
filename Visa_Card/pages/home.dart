import 'package:flutter/material.dart';
import 'package:practice/Visa_Card/pages/content.dart';

import '../utils/colors.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(15),
          height: 250,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: AppColors.shadows,

          ),
          child: Content(),

        ),
      ),
    );
  }
}

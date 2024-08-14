import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/text.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.transparent ,

      body: Container(

        child: Stack(
          children: [
            Positioned(
              right: -150,
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.1),
                  ),
                ),),
            Positioned(
              left: -150,
              bottom: -500,
              child: Container(
                height: 600,
                width: 600,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.1),
                ),
              ),),
            Positioned(
              top: 20 ,
                left: 15,
                child: Container(height: 45,
                child: Image.asset("assets/visa.webp"),)),
            Positioned(
              top: 60,
                left: 35,
                child: ModifiedText(
                  text: "It's where you want to be",
                  color: Colors.grey.shade700,
                  size: 14,


                )),
            Positioned(
              bottom: 40,
                left: 35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("7865  7612  3453  0023",
                      style: GoogleFonts.sourceCodePro(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey.shade700
                      ),),
                    SizedBox(height: 5,),
                    Text("RUBAYAT KHUSBU",
                      style: GoogleFonts.sourceCodePro(
                        fontWeight: FontWeight.w700 ,
                        fontSize: 15,
                        color: Colors.grey.shade700
                      ),),
                  ],
                )),
            Positioned(
              top: 30,
                right: 25,
                child: Container(
                  height: 50,
                    child: Image.asset("assets/5.png"),
                ))
          ],
        ),
      ),
    );
  }
}

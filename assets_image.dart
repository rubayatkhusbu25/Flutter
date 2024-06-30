import 'package:flutter/material.dart';

class ImageWidget1 extends StatefulWidget {
  const ImageWidget1({super.key});

  @override
  State<ImageWidget1> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Assets Image Widget1"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 250,
          //color: Colors.pinkAccent,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(blurRadius: 10, color: Colors.grey.shade700,
                    spreadRadius: 5.0),
              ],
              image: DecorationImage(
                  image: AssetImage("assets/cb.jpg"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20),
              color: Colors.pinkAccent),


        ),


      ),

      //child: Image.network("https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcThNR1v40cfyuyqui2XPLaI_FeowV8FOUoxmE1H6R1Ry1huorPU",
      //fit: BoxFit.cover,),
    );

  }
}

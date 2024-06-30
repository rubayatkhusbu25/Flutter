import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget2 extends StatefulWidget {
  const ImageWidget2({super.key});

  @override
  State<ImageWidget2> createState() => _ImageWidget2State();
}

class _ImageWidget2State extends State<ImageWidget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cached Image Widget2"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 250,
          child: CachedNetworkImage(
            imageUrl: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcThNR1v40cfyuyqui2XPLaI_FeowV8FOUoxmE1H6R1Ry1huorPU",
            placeholder: (context,url)=>Center(child: CircularProgressIndicator()),
            errorWidget: (context,url,error)=> Icon(Icons.error_outline),

          ),

        ),


      ),


    );

  }
}

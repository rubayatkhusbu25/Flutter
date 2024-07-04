import 'package:flutter/material.dart';

class ImageAlert extends StatefulWidget {
  const ImageAlert({super.key});

  @override
  State<ImageAlert> createState() => _ImageAlertState();
}

class _ImageAlertState extends State<ImageAlert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Image Alertdialog"),
        backgroundColor: Colors.indigo,

      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Show Custom AlertDialog"),
          onPressed: (){
           _showImageAD(context);


          },
        ),
      ),

    );
}

void _showImageAD(BuildContext context){
  showDialog(
      context: context,
      builder: (BuildContext contex){
        return AlertDialog(
          //title: Text("Image AlertDialog"),
          backgroundColor: Colors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children:<Widget> [
              Image.asset("assets/emo.jpg",fit: BoxFit.cover,),
              SizedBox(height: 5,),
              Center(child: Text(" image description",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
              Text("This is your image description"),
              Text("This is your image description"),

            ],
          ),
          actions: <Widget>[
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },


                child: Text("Close"))
          ],

        );
      }


  );}
}

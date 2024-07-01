import 'package:flutter/material.dart';

class AlertWidget extends StatefulWidget {
  const AlertWidget({super.key});

  @override
  State<AlertWidget> createState() => _AlertWidgetState();
}

class _AlertWidgetState extends State<AlertWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(" Show Alert"),
          onPressed: (){
            _showDialog(context);
          },
        ),
      ),
    );
  }
}

Future<void>_showDialog(BuildContext context)async{
  return showDialog(
      context: context,
      builder: (BuildContext context){
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Icon(Icons.add_alert),
          SizedBox(width: 5,),
          Text("Weather Alert"),


        ],
      ),
     elevation: 0,
     scrollable:true,
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(40),
     ),
     content: SingleChildScrollView(
       child: ListBody(
         children: [
           Text("Hello today is sunny day"),
           Text("Temparature is 43 degree celsious")
         ],
       ),
     ),
      actions: [
        TextButton(onPressed: (){}, child: Text("Approve")),
        TextButton(onPressed: (){ Navigator.pop(context);}, child: Text("Cancel")),
      ],
    );
  });
}

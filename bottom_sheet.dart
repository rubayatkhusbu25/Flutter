import 'package:flutter/material.dart';

class BottomSt extends StatefulWidget {
  const BottomSt({super.key});

  @override
  State<BottomSt> createState() => _BottomStState();
}

class _BottomStState extends State<BottomSt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                )
              ),
              elevation: 0,
              isDismissible: true,
              enableDrag: true,

              backgroundColor: Colors.grey,

                context: context,
                builder: (context){
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        ListTile(
                         title: Text("Kiara"),
                          subtitle: Text("222"),
                         leading: Icon(Icons.account_balance_wallet),
                          //tileColor: Colors.pinkAccent,
                          textColor: Colors.white,
                          titleTextStyle: TextStyle(fontFamily: ("Times New Roman"), fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 3,),
                        ListTile(
                          title: Text("Kiara"),
                          subtitle: Text("222"),
                          leading: Icon(Icons.account_balance_wallet),
                          tileColor: Colors.pinkAccent,
                          textColor: Colors.white,
                          titleTextStyle: TextStyle(fontFamily: ("Times New Roman"), fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 3,),
                        ListTile(
                          title: Text("Kiara"),
                          subtitle: Text("222"),
                          leading: Icon(Icons.account_balance_wallet),
                          tileColor: Colors.pinkAccent,
                          textColor: Colors.white,
                          titleTextStyle: TextStyle(fontFamily: ("Times New Roman"), fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 3,),
                        ListTile(
                          title: Text("Kiara"),
                          subtitle: Text("222"),
                          leading: Icon(Icons.account_balance_wallet),
                          tileColor: Colors.pinkAccent,
                          textColor: Colors.white,
                          titleTextStyle: TextStyle(fontFamily: ("Times New Roman"), fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 3,),
                        ListTile(
                          title: Text("Kiara"),
                          subtitle: Text("222"),
                          leading: Icon(Icons.account_balance_wallet),
                          tileColor: Colors.pinkAccent,
                          textColor: Colors.white,
                          titleTextStyle: TextStyle(fontFamily: ("Times New Roman"), fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 3,),
                        ListTile(
                          title: Text("Kiara"),
                          subtitle: Text("222"),
                          leading: Icon(Icons.account_balance_wallet),
                          tileColor: Colors.pinkAccent,
                          textColor: Colors.white,
                          titleTextStyle: TextStyle(fontFamily: ("Times New Roman"), fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 3,),
                        ListTile(
                          title: Text("Kiara"),
                          subtitle: Text("222"),
                          leading: Icon(Icons.account_balance_wallet),
                          tileColor: Colors.pinkAccent,
                          textColor: Colors.white,
                          titleTextStyle: TextStyle(fontFamily: ("Times New Roman"), fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 3,),
                        ListTile(
                          title: Text("Kiara"),
                          subtitle: Text("222"),
                          leading: Icon(Icons.account_balance_wallet),
                          tileColor: Colors.pinkAccent,
                          textColor: Colors.white,
                          titleTextStyle: TextStyle(fontFamily: ("Times New Roman"), fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 3,),
                        ListTile(
                          title: Text("Kiara"),
                          subtitle: Text("222"),
                          leading: Icon(Icons.account_balance_wallet),
                          tileColor: Colors.pinkAccent,
                          textColor: Colors.white,
                          titleTextStyle: TextStyle(fontFamily: ("Times New Roman"), fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 3,),
                      ],

                    
                    ),
                  );
                });

          },
          child: Text("Bottom sheet"),
        ),

      ),
    );
  }
}

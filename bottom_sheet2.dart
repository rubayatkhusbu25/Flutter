import 'package:flutter/material.dart';

class BottomSt2 extends StatefulWidget {
  const BottomSt2({super.key});

  @override
  State<BottomSt2> createState() => _BottomSt2State();
}

class _BottomSt2State extends State<BottomSt2> {
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
                        Padding(
                          padding: EdgeInsets.zero,
                          child: ListTile(
                            title: Text("Kiara"),
                            subtitle: Text("kiara@gmail.com"),
                              trailing: Icon(Icons.more_vert),
                            leading: CircleAvatar(
                                radius: 30,

                                backgroundImage: AssetImage("assets/cb.jpg")),
                            //tileColor: Colors.pinkAccent,
                            textColor: Colors.white,
                            titleTextStyle: TextStyle(fontFamily: ("Times New Roman"), fontSize: 14,fontWeight: FontWeight.bold),
                          ),
                        ),
                        
                        SizedBox(height: 3,),
                        Padding(
                          padding: EdgeInsets.zero,
                          child: ListTile(
                            title: Text("Kiara"),
                            subtitle: Text("kiara@gmail.com"),
                            trailing: Icon(Icons.more_vert),
                            leading: CircleAvatar(
                                radius: 30,

                                backgroundImage: AssetImage("assets/cb.jpg")),
                            //tileColor: Colors.pinkAccent,
                            textColor: Colors.white,
                            titleTextStyle: TextStyle(fontFamily: ("Times New Roman"), fontSize: 14,fontWeight: FontWeight.bold),
                          ),
                        ),

                        SizedBox(height: 3,),
                        Padding(
                          padding: EdgeInsets.zero,
                          child: ListTile(
                            title: Text("Kiara"),
                            subtitle: Text("kiara@gmail.com"),
                            trailing: Icon(Icons.more_vert),
                            leading: CircleAvatar(
                                radius: 30,

                                backgroundImage: AssetImage("assets/cb.jpg")),
                            //tileColor: Colors.pinkAccent,
                            textColor: Colors.white,
                            titleTextStyle: TextStyle(fontFamily: ("Times New Roman"), fontSize: 14,fontWeight: FontWeight.bold),
                          ),
                        ),

                        SizedBox(height: 3,),
                        Padding(
                          padding: EdgeInsets.zero,
                          child: ListTile(
                            title: Text("Kiara"),
                            subtitle: Text("kiara@gmail.com"),
                            trailing: Icon(Icons.more_vert),
                            leading: CircleAvatar(
                                radius: 30,

                                backgroundImage: AssetImage("assets/cb.jpg")),
                            //tileColor: Colors.pinkAccent,
                            textColor: Colors.white,
                            titleTextStyle: TextStyle(fontFamily: ("Times New Roman"), fontSize: 14,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Divider(),
                       Text("Play if you can do it!", style: TextStyle(color: Colors.white),),

                        SizedBox(height: 13,),
                      ],


                    ),
                  );
                });

          },
          child: Text("Bottom sheet",),
        ),

      ),
    );
  }
}

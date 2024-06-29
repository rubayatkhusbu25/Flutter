import 'package:flutter/material.dart';

class Dawer extends StatefulWidget {
  const Dawer({super.key});

  @override
  State<Dawer> createState() => _DawerState();
}

class _DawerState extends State<Dawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                  child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.cyan,

                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage("https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcThNR1v40cfyuyqui2XPLaI_FeowV8FOUoxmE1H6R1Ry1huorPU"),

                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment:CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                          Text("Safa Kabir", style: TextStyle(fontWeight: FontWeight.bold ),),
                          Text("safa@gmail.com",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal ),),
                        ],),
                      ],
                    ),

              )),
              ListTile(leading: Icon(Icons.folder),
              title: Text("My folders"),
              subtitle: Text("39"),),
              ListTile(leading: Icon(Icons.notifications),
              title: Text("Notifications"),),
              ListTile(leading: Icon(Icons.settings),
              title: Text("Settings"),),
              ListTile(leading: Icon(Icons.star),
                title: Text("Favourite"),),
              ListTile(leading: Icon(Icons.delete),
                title: Text("Trash"),),
              ListTile(leading: Icon(Icons.upload),
                title: Text("Uplodes"),),
              ListTile(leading: Icon(Icons.mail),
                title: Text("Mails"),),

              Divider(), //creates a border line

              ListTile(leading: Icon(Icons.mobile_screen_share_sharp),
                title: Text("Share"),),

              ListTile(leading: Icon(Icons.logout),
                title: Text("Logout"),),


            ],
          ),
        ),

      ) ,
      appBar: AppBar(
        title: Text("Dawer Widget"),
        backgroundColor: Colors.green,

      ),
      body: Container(
        child: Center(
          child: Text("hey there!"),
        )


      ),
    );
  }
}

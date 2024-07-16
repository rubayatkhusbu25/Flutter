import 'package:flutter/material.dart';
import 'package:practice/works/dawer.dart';
import 'package:practice/works/image_alertdialog.dart';


class BottomNavi extends StatefulWidget {
  const BottomNavi({super.key});

  @override
  State<BottomNavi> createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {

  int selectedindex=0;

  PageController pageController=PageController();

 /* List<Widget>widgets=[
    Text("Home"),
    Text("Call"),
    Text("Notification"),
    Text("Save"),
  ];*/

  void onItemTapped(int index){
    setState(() {
      selectedindex=index;
    });
    pageController.jumpToPage(index);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text("Bottom Navigation"),
        backgroundColor: Colors.pink,
      ),*/
      body: PageView(
        controller: pageController,
        children: [
          Dawer(),
          ImageAlert(),
          Dawer(),
          ImageAlert(),
        ],

      ),//  Center(child: widgets.elementAt(selectedindex)), // for text showing
      bottomNavigationBar: BottomNavigationBar(items: const<BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Call"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notification"),
        BottomNavigationBarItem(
            icon: Icon(Icons.save_alt),
            label: "Save"),
      ],
      currentIndex: selectedindex,
      selectedItemColor: Colors.pink,
      unselectedItemColor: Colors.grey,
      onTap: onItemTapped ,),
    );
  }
}

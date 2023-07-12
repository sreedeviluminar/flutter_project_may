import 'package:flutter/material.dart';
import 'package:flutter_project_may/ListView/ListView%20separator.dart';
import 'package:flutter_project_may/home.dart';
import 'package:flutter_project_may/login.dart';

import 'ListView/ListView with  List.generate.dart';

void main() {
  runApp(MaterialApp(
    home: BottomNavBar(),
  ));
}

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}
class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  var screens = [
    ListView3(),
    ListView2(),
    LoginPage(),
    HomePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          backgroundColor: Colors.green,
          currentIndex: index,
          selectedItemColor: Colors.yellow,
          // type: BottomNavigationBarType.fixed,
          type: BottomNavigationBarType.shifting,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.red,  // applicable for bottom navigation bar type shifting
                icon: Icon(Icons.contacts_sharp),
                label: "Contact"),
            BottomNavigationBarItem(
                backgroundColor: Colors.green,
                icon: Icon(Icons.search),
                label: "Search"),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.add_box_rounded),
                label: "View"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home")
          ]),
      body: screens[index],
    );
  }
}

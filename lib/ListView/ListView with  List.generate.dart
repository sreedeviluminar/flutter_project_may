import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListView2()));
}

class ListView2 extends StatelessWidget {
  var names = [
    "Anu",
    "giri",
    "boby",
    "SHONI",
    "Anju",
    "Meera",
    "Abin",
    "Anu",
    "giri",
    "boby",
    "SHONI",
    "Anju",
    "Meera",
    "Abin",
    "Meera",
    "Abin",
    "Meera",
    "Abin",
    "Meera",
    "Abin"
  ];
  var images = [
    "assets/icons/apple.png",
    "assets/icons/bananas.png",
    "assets/icons/grapes.png",
    "assets/icons/mango.png",
    "assets/icons/orange.png",
    "assets/icons/pineapple.png",
    "assets/icons/tree.png",
    "assets/icons/apple.png",
    "assets/icons/bananas.png",
    "assets/icons/grapes.png",
    "assets/icons/mango.png",
    "assets/icons/orange.png",
    "assets/icons/pineapple.png",
    "assets/icons/tree.png",
    "assets/icons/bananas.png",
    "assets/icons/grapes.png",
    "assets/icons/mango.png",
    "assets/icons/orange.png",
    "assets/icons/pineapple.png",
    "assets/icons/tree.png",
  ];

  var icon = [Icons.add,Icons.ac_unit,Icons.account_box];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListVie 2"),
      ),
      body: ListView(
        children: List.generate(3, (index) => Card(
         //child: Image.asset(images[index]),
          child: Icon(icon[index]),
         color: Colors.yellow,
        ))
      ),
    );
  }
}

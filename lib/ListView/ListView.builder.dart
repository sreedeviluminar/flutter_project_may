import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListView3()));
}

class ListView3 extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Builder"),
      ),
      body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Card(
              child: Text(names[index]),
              color: Colors.amber,
            );
          }),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.message)),
    );
  }
}

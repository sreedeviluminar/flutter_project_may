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
      appBar: AppBar(title: Text("ListView Builder"),),
      body: ListView.builder(
        itemCount: 20 ,
          itemBuilder: (context,index){
        return Card(
              //color: Colors.brown,
                child: ListTile(
                  leading: Image.asset("assets/icons/apple.png"),
                  title: Text(names[index]),
                  subtitle: Text("Hello"),
                  trailing: Text("11.30"),
                ));

      }),
      floatingActionButton: FloatingActionButton(onPressed: (){}),
    );
  }
}

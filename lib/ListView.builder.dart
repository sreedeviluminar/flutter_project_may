import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: ListView3()));
}

class ListView3 extends StatelessWidget {
  const ListView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView Builder"),),

      body: ListView.builder(
          itemCount:  5,
          itemBuilder: (context,index){
        return Card(
              //color: Colors.brown,
                child: ListTile(
                  leading: Image.asset("assets/icons/apple.png"),
                  title: Text("szsdzd"),
                  subtitle: Text("Hello"),
                  trailing: Text("11.30"),
                ));

      }),
    );
  }
}

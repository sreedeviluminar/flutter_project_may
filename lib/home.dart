import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: HomePage()));
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyHome")),
      body: ListView(
        children: [
          const Center(child: Text("Fruits")),
          Image.asset("assets/icons/apple.png"),
          Image.asset("assets/icons/mango.png"),
          Image.asset("assets/icons/orange.png"),
          Image.asset("assets/icons/grapes.png"),
          Image.asset("assets/icons/bananas.png"),
          Image.asset("assets/icons/pineapple.png"),
        ],
      ),
    );
  }
}


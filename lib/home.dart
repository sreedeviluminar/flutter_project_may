import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyHome")),
      body: ListView(
        children: [
          Text("Fruits"),
          Image.asset(name)
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

void main() {
  // to run a program  // runApp() to attach the widget tree to the ui
  runApp(MaterialApp(
    // default theme of our app (multiplatform support)
    home:
        FirstPage(), // initial screen of our app , (home must be a widget  it may be stateless / statefull)
  ));
}

class FirstPage extends StatelessWidget {
  //stateless mean firstpage donot undergo any state change
  @override
  Widget build(BuildContext context) {
    // to create a widget tree  (Build context -> to Monitor the widgets in the widget tree)
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Hello",
          style: TextStyle(fontSize: 20, color: Colors.pinkAccent),
        ),
      ),
      body: const Center(
          child: Icon(
        Icons.lan,
        size: 130,
        color: Colors.green,
      )),
    );
  }
}

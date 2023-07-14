import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView2(),
  ));
}

class GridView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 40),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.lime,
              child: Center(
                  child: Text(
                "User $index",
                style: const TextStyle(fontSize: 20, color: Colors.purple),
              )),
            );
          }),
    );
  }
}

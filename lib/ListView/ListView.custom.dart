import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_Custom(),
  ));
}

class List_Custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView 4"),
        ),
        body: ListView.custom(
          ///Way . 1
          //     childrenDelegate: SliverChildListDelegate(
          //   [ Text("Hello"), Text("Hello"), Text("Hello"), Text("Hello") ],
          // ))
          ///Way . 1.a
          // childrenDelegate: SliverChildListDelegate(
          //     List.generate(10, (index) => const Text("Hello")))
          ///Way . 2
          childrenDelegate: SliverChildBuilderDelegate(
              childCount: 10,
              (context, index) => const Center(child: Text("Hello"))),
        ));
  }
}

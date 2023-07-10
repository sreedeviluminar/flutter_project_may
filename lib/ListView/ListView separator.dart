import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView3(),
  ));
}

class ListView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List Separator"),
        ),
        body: ListView.separated(
            itemBuilder: (contex, index) {
              return const Card(
                color: Colors.amber,
                child: Text("Hello"),
              );
            },
            separatorBuilder: (context, index) {
              if (index % 5 == 0) {
                return const Divider(
                  color: Colors.red,
                );
              }
              return Text("");
            },
            itemCount: 20));
  }
}

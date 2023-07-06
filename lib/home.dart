import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyHome"),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(
            width: 30,
          ),
          Icon(Icons.search),
        ],
      ),
      body: ListView(
        children: [
          Center(
              child: Text("Fruits",
                  style: GoogleFonts.dancingScript(
                      fontSize: 80, color: Colors.green))),
          Card(
            child: ListTile(
              leading: Image.asset("assets/icons/apple.png"),
              title: const Text("Apple"),
              subtitle: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.done_all,
                    color: Colors.blueAccent,
                  ),
                  Text("Hello"),
                ],
              ),
              trailing: Wrap(direction: Axis.vertical, children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
              ]),
            ),
          ),
          Card(
            color: Colors.lightGreen,
            elevation: 5,
            shadowColor: Colors.red,
            child: ListTile(
                leading: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/greennew.jpg")),
                title: Text(
                  "Mango",
                  style: GoogleFonts.aBeeZee(),
                ),
                subtitle: const Text("\$100"),
                trailing: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.favorite),
                    ),
                    // SizedBox(width: 20,),
                    Icon(Icons.shopping_cart)
                  ],
                )),
          ),
          Image.asset("assets/icons/orange.png"),
          Image.asset("assets/icons/grapes.png"),
          Image.asset("assets/icons/bananas.png"),
          Image.asset("assets/icons/pineapple.png"),
        ],
      ),
    );
  }
}

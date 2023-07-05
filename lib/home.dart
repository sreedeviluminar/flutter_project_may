import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyHome")),
      body: ListView(
        children: [
          Center(
              child: Text("Fruits",
                  style: GoogleFonts.dancingScript(
                      fontSize: 80, color: Colors.green))),
          Card(
            child: ListTile(
              leading: Image.asset("assets/icons/apple.png"),
              title: Text("Apple"),
              subtitle: Text("\$200"),
              trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),
            ),
          ),
          const Card(
            color: Colors.lightGreen,
            elevation: 5,
            shadowColor:Colors.red,
            child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/images/greennew.jpg")),
                title: Text("Mango"),
                subtitle: Text("\$100"),
                trailing: Icon(Icons.shopping_cart),),
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

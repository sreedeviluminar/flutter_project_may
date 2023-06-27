import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // to run a program  // runApp() to attach the widget tree to the ui
  runApp(MaterialApp(
    // default theme of our app (multiplatform support)
    debugShowCheckedModeBanner: false, // to remove debug badge
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
      // backgroundColor: Colors.teal, // to set a single color to the entire screen
      /* appBar: AppBar(
        centerTitle: true, // set the appbar title to center of appbar
        title: const Text(
          "Hello",
          style: TextStyle(fontSize: 20, color: Colors.pinkAccent),
        ),
      ),*/
      body: Container(
        // color: Colors.blueGrey, // to set a single color to the entire screen
        decoration: const BoxDecoration(
            // image: DecorationImage(        // to set an image as screen background
            //   fit: BoxFit.fill,           // to fit the image to the entire screen
            //   image: NetworkImage("https://images.unsplash.com/photo-1524055988636-436cfa46e59e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80"),
            //  image:  AssetImage("assets/images/greennew.jpg")
          gradient: LinearGradient(
           // stops: [.3,.4,.1,.1],
            colors: [
          Colors.green,
          Colors.lightGreen,
          Colors.lightGreenAccent,
          Colors.lime
        ], begin: Alignment.bottomRight, end: Alignment.topLeft)),
        child: Center(
          child: Column(
            // for column children will place from top left to bottom left
            mainAxisAlignment: MainAxisAlignment.center,
            // to move the children to center of column
            children: [
              //Icon(Icons.favorite,color: Colors.red,size: 90,),
              Image.asset(
                "assets/icons/tree.png",
                height: 200,
                width: 200,
              ),
              //Image.network("https://cdn.pixabay.com/photo/2016/12/27/13/10/logo-1933884_640.png", height: 200, width: 200,),
               Text(
                "My Application",
                //style: TextStyle(fontSize: 50,color: Colors.brown,fontWeight: FontWeight.bold),
                style: GoogleFonts.pacifico(fontSize: 50,color: Colors.brown),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

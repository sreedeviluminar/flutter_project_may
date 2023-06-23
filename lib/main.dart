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
        //centerTitle: true, // set the appbar title to center of appbar
        title: const Text(
          "Hello",
          style: TextStyle(fontSize: 20, color: Colors.pinkAccent),
        ),
      ),
      body:  Center(
        child: Column( // for column children will place from top left to bottom left
          mainAxisAlignment: MainAxisAlignment.center, // to move the children to center of column
          children: [
            //Icon(Icons.favorite,color: Colors.red,size: 90,),
           // Image.asset("assets/icons/tree.png",height: 200,width: 200,),
            Image.network("https://cdn-icons-png.flaticon.com/512/4436/4436481.png"),
            Text("My Application",style: TextStyle(fontSize: 50),),
          ],
        ),
      ),
    );
  }
}

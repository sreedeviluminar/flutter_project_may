import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(),
  ));
}

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState(); //create and initial state for the screen
}

class _SplashPageState extends State<SplashPage> {
  // initial state of SplashPage
  // there are two functionalities in state class
  // initState(){} and setState(){}
  // initState(){} - what will happen when the app or screen is loaded initially
  // setState(){}  - what change will occur on a widget or screen

  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) => LoginPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/greennew.jpg")),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/tree.png",
                height: 200,
                width: 200,
              ),
              Text(
                "My Application",
                style: GoogleFonts.pacifico(fontSize: 50, color: Colors.brown),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

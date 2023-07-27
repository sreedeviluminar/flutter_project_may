import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = const PageDecoration(
        fullScreen: true,
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.italic,
            fontSize: 30,
            fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 18, color: Colors.white),
        imagePadding: EdgeInsets.all(20),
        boxDecoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.orange,
          Colors.deepOrange,
          Colors.red,
          Colors.redAccent
        ], begin: Alignment.topRight, end: Alignment.bottomLeft)));

    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: pageDecoration,
          image: Align(
            // to place the widget at a desired position
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/logingirl.png"),
          ),
          title: "First Page",
          body:
              "With Microsoft 365 for families, you can create, organize, and collaborate, all in one place",
        ),
        PageViewModel(
            decoration: const PageDecoration(
                fullScreen: true,
                titleTextStyle: TextStyle(
                    color: Colors.purple,
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                bodyTextStyle: TextStyle(fontSize: 18, color: Colors.pink),
                imagePadding: EdgeInsets.all(20),
                boxDecoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/greennew.jpg")))),
            image: Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/images/logingirl.png"),
            ),
            title: "SecondPage",
            body:
                "With Microsoft 365 for families, you can create, organize, and collaborate, all in one place"),
        PageViewModel(
            decoration: pageDecoration,
            image: Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/images/logingirl.png"),
            ),
            title: "Third Page",
            body:
                "With Microsoft 365 for families, you can create, organize, and collaborate, all in one place")
      ],
    );
  }
}

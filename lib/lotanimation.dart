import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: LotiieAnim(),));
}
class LotiieAnim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       // child: Lottie.asset("assets/animations/penguin.json"),
        child: Lottie.network("https://lottie.host/f2354035-330f-4e34-8c6d-9db186318977/LO9TLTXY5v.json"),
        
      ),
    );
  }
}

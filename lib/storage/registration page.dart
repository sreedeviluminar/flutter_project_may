import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final name = TextEditingController();
  final uname = TextEditingController();
  final pwd = TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: uname,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "UserName"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: pwd,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password"),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Register Here"))
          ],
        ),
      ),
    );
  }
}

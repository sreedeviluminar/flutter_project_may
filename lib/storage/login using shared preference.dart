import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'SharedHome.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPageShared(),
  ));
}

class LoginPageShared extends StatefulWidget {
  @override
  State<LoginPageShared> createState() => _LoginPageSharedState();
}

class _LoginPageSharedState extends State<LoginPageShared> {
  final uname_controller = TextEditingController();
  final pass_controller = TextEditingController();

  late SharedPreferences preferences; // shared preference instance

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Perf Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: uname_controller,
                decoration: const InputDecoration(
                    hintText: "UserName", border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: pass_controller,
                decoration: const InputDecoration(
                    hintText: "PassWord", border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  preferences =await SharedPreferences.getInstance()!;
                  String username = uname_controller.text;
                  String password = pass_controller.text;

                  if (username != "" && password != "") {
                    preferences.setString("uname", username);
                    preferences.setBool('newuser', false);
                    // if the user is logged in value of newuser will be false
                    // if the user is logged out value of newuser will be true

                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SharedHome()));
                  }
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}

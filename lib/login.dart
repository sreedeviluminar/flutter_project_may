import 'package:flutter/material.dart';
import 'package:flutter_project_may/registration.dart';
import 'home.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Column(
        children: [
          Image.asset("assets/icons/tree.png", height: 100, width: 100),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: 'UserName',
                  helperText: 'Username must be an email',
                  labelText: 'UserName',
                  prefixIcon: const Icon(Icons.person)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
            child: TextField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: 'Password',
                  helperText: 'password must contain 6 characters',
                  labelText: 'PassWord',
                  prefixIcon: const Icon(Icons.visibility_off_sharp),
                  suffixIcon: const Icon(Icons.visibility)),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomePage()));
              },
              child: const Text("Login")),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RegistrationPage()));
              },
              child: const Text("Not a User!!!!!! Register Here..."))
        ],
      ),
    );
  }
}

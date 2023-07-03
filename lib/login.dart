import 'package:flutter/material.dart';
import 'package:flutter_project_may/registration.dart';
import 'home.dart';

class LoginPage extends StatelessWidget {
  String username = "admin@123";
  String password = 'abc123';

  // for fetching
  final uname = TextEditingController();
  final pass = TextEditingController();

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
              controller: uname,
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
              controller: pass,
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
                if (uname.text != "" && pass.text != "") {
                  if(uname.text == username && pass.text == password){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>HomePage()));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Email/Password is Incorrect"),
                      backgroundColor: Colors.red,));
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Fields Must not be empty"),
                    backgroundColor: Colors.red,));
                }
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

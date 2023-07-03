import 'package:flutter/material.dart';
import 'package:flutter_project_may/login.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  //to validate the entire form
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Registration'),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            const Text(
              "Registration Page",
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "UserName"),
                validator: (email) {  // email - data from text form field
                  if (email!.isEmpty || !email.contains('@')) {
                    return "Enter a valid email/ field must not be empty";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password"),
                validator: (password){
                  if (password!.isEmpty || password.length < 6){
                    return "Password length should be greater than 6 / must not be empty ";
                  }else{
                    return null;
                  }
                },
              ),
            ),
            TextFormField(),
            ElevatedButton(onPressed: () {
              var isValid = formkey.currentState!.validate();
              if(isValid == true){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=>LoginPage()));
              }else{

              }

            }, child: const Text("RegistrationPage"))
          ],
        ),
      ),
    );
  }
}

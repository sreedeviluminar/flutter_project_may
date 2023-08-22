import 'package:flutter/material.dart';

class FireRegistration extends StatefulWidget {
  const FireRegistration({super.key});

  @override
  State<FireRegistration> createState() => _FireRegistrationState();
}

class _FireRegistrationState extends State<FireRegistration> {
   final remail = TextEditingController();
   final rpass  = TextEditingController();

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Registration Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: remail,
              decoration: const InputDecoration(border: OutlineInputBorder(),hintText: 'Email'),
            ),
            const SizedBox(height: 20,),
            TextField(
              controller: rpass,
              decoration: const InputDecoration(border: OutlineInputBorder(),hintText: 'Password'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              String username = remail.text.trim();
              String password = rpass.text.trim();

            }, child: const Text("Reister Here")),
            const SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }
}


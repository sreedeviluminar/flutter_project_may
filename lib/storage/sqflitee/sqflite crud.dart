import 'package:flutter/material.dart';

import 'dboperation.dart';

class SqfliteCrud extends StatefulWidget {
  @override
  State<SqfliteCrud> createState() => _SqfliteCrudState();
}

class _SqfliteCrudState extends State<SqfliteCrud> {
  final name_controller = TextEditingController();
  final phone_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      floatingActionButton:
          //here null means create contact id is null
          FloatingActionButton(
              onPressed: () => showSheet(null), child: Icon(Icons.add)),
    );
  }

  void showSheet(int? id) {
    if (id != null) {}

    showModalBottomSheet(
        elevation: 5,
        isScrollControlled: true,
        context: context,
        builder: (context) {
         return Container(
            padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: name_controller,
                  decoration: InputDecoration(hintText: "Name"),
                ),
                TextField(
                  controller: phone_controller,
                  decoration: InputDecoration(hintText: "Phone Number"),
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (id == null) {
                        await createContact();
                      }
                      if (id != null) {
                        //await updateContact();
                      }
                    },
                    child: Text(id == null ? "Create Contact": "Update Contact"))
              ],
            ),
          );
        });
  }

 Future<void> createContact() async{
    await SQLHelper.create_contact(name_controller.text,phone_controller.text);
 }
}

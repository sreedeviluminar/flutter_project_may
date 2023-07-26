import 'package:flutter/material.dart';
void main(){runApp(MaterialApp(home: DrawerEx(),));}
class DrawerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Drawer"),
      ),
      //Theme(
        //data: Theme.of(context).copyWith(canvasColor: Colors.green),
       // child:
      //endDrawer:
      drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                    //color: Colors.purple
                 image: DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage("assets/images/greennew.jpg"))),
                accountName: const Text("My Name",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                accountEmail: const Text("myname@gmail.com"),
                currentAccountPicture: Image.asset("assets/images/logingirl.png"),
                otherAccountsPictures: [Image.asset("assets/icons/apple.png")],
              ),
               ListTile(
                onTap: (){},
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
              const ListTile(
                leading: Icon(Icons.menu),
                title: Text("Home"),
              ),

            ],
          ),
        ),
     // ),
    );
  }
}

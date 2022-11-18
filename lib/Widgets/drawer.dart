import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
         child: ListView(
        children: [
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountEmail: Text("mayurpatil7882@gmail.com"),
              accountName: Text("Mayur Patil"),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdQOQUjnIfG_aOjOAcMuQ4RR-YwuQblduQBQ&usqp=CAU'),),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.white),
            title: Text("Home", style: TextStyle(color: Colors.white), textScaleFactor: 1.2, ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.cart, color: Colors.white),
            title: Text("cart", style: TextStyle(color: Colors.white), textScaleFactor: 1.2),

          ),ListTile(
            leading: Icon(CupertinoIcons.mail, color: Colors.white),
            title: Text("mail", style: TextStyle(color: Colors.white), textScaleFactor: 1.2),
          ),

        ],
      ),
      ),
     
    );
  }
}
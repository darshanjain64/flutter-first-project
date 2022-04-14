import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageurl ="https://cdn.pixabay.com/photo/2022/03/25/19/24/waterfall-7091641__480.jpg";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text("Abc Xyz"),
              accountEmail: Text("abcxyz@gmail.com"),
              currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageurl)),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home),title: Text("Home"),
          ),ListTile(
            leading: Icon(CupertinoIcons.profile_circled),title: Text("Profile"),
          ),ListTile(
            leading: Icon(CupertinoIcons.mail),title: Text("Mail"),
          )
        ],
      ),
    );
  }
}

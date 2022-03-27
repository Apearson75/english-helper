import 'package:flutter/material.dart';

import '../states/checkQuote.dart';
import '../states/para.dart';
import '../states/dictionary.dart';
import '../states/personification.dart';

class HomeDrawer extends StatefulWidget {
  @override
  DrawerState createState() => DrawerState();
}

class DrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Paragraph Generator'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Para()));
            },
          ),
          ListTile(
            title: Text('Check Quote'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => CheckQuote()));
            },
          ),
          Divider(color: Colors.grey),
          ListTile(
            title: Text('Personification'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Personification()));
            },
          ),
          Divider(color: Colors.grey),
          ListTile(
            title: Text('Dictionary'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Dictionary()));
            },
          )
        ],
      )
    );
  }
}
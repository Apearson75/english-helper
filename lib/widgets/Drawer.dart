import 'package:flutter/material.dart';

import '../states/para.dart';

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
        ],
      )
    );
  }
}
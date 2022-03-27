import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../states/checkQuote.dart';
import '../states/para.dart';
import '../states/dictionary.dart';
import '../states/personification.dart';
import '../states/simile.dart';

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
            title: Text('Paragraph Generator', style: GoogleFonts.nunito()),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Para()));
            },
          ),
          ListTile(
            title: Text('Check Quote', style: GoogleFonts.nunito()),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => CheckQuote()));
            },
          ),
          Divider(color: Colors.grey),
          ListTile(
            title: Text('Personification', style: GoogleFonts.nunito()),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Personification()));
            },
          ),
          ListTile(
            title: Text('Simile', style: GoogleFonts.nunito()),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Simile()));
            },
          ),
          Divider(color: Colors.grey),
          ListTile(
            title: Text('Dictionary', style: GoogleFonts.nunito()),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Dictionary()));
            },
          )
        ],
      )
    );
  }
}
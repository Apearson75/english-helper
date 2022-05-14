import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParaNavbar extends StatefulWidget {
  @override
  NavbarState createState() => NavbarState();
}

class NavbarState extends State<ParaNavbar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: _selectedIndex,
      onDestinationSelected: (index) => setState(() => _selectedIndex = index),
      destinations: [
        NavigationDestination(
            icon: Icon(Icons.book_outlined), label: "Theme Paragraph"),
        NavigationDestination(icon: Icon(Icons.abc_outlined), label: "Test"),
      ],
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:english_techniques/english_techniques.dart' as english;
import 'package:google_fonts/google_fonts.dart';

import '../widgets/Navbar.dart';
import 'paragraph/themePara.dart';
import 'paragraph/storyPara.dart';

class Para extends StatefulWidget {
  @override
  ParaState createState() => ParaState();
}

class ParaState extends State<Para> {
  int _selectedIndex = 0;
  final screens = [
    ThemePara(),
    StoryPara(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[_selectedIndex],
        bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) =>
              setState(() => _selectedIndex = index),
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.book_outlined), label: "Theme Paragraph"),
            NavigationDestination(
                icon: Icon(Icons.abc_outlined), label: "Test"),
          ],
        ));
  }
}

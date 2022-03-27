// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:english_techniques/english_techniques.dart' as english;
import 'package:google_fonts/google_fonts.dart';

class Para extends StatefulWidget {
  @override
  ParaState createState() => ParaState();
}

class ParaState extends State<Para> {
  
  String paragraph = 'Type Thing in the boxes to generate a paragraph.';
    
  // Flutter Controllers for the TextFields.
  final _authorController = TextEditingController();
  final _pointController = TextEditingController();
  final _storyController = TextEditingController();
  final _quoteController = TextEditingController();
  
  void changeParagraph() {
      setState(() {
        paragraph = english.ParaMaker().authorPara(_authorController.text, _pointController.text, _storyController.text, _quoteController.text);
      });
  }
  
  @override
  Widget build(BuildContext context) {
    // A random paragraph generator using the english_techniques package.
    
    TextField author = TextField(
      decoration: InputDecoration(
        labelText: 'Author',
        hintText: 'John Doe',
      ),
      controller: _authorController,
    );
    TextField point = TextField(
      decoration: InputDecoration(
        labelText: 'Point',
        hintText: 'What does the author want to point out?',
      ),
      controller: _pointController,
    );
    TextField story = TextField(
      decoration: InputDecoration(
        labelText: 'Story',
        hintText: 'Name of the Story',
      ),
      controller: _storyController,
    );
    TextField quote = TextField(
      decoration: InputDecoration(
        labelText: 'Quote',
        hintText: 'The quote',
      ),
      controller: _quoteController,
    );

    // void to change the paragraph using the ParaMaker.

    return Scaffold(
      appBar: AppBar(
        title: Text('Paragraph Generator', style: GoogleFonts.nunito(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))),
      ),
      body: Center(
        child: 
          ListView(
            children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5, bottom: 5),
                      child: Text(
                        paragraph,
                        style: GoogleFonts.nunito(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Card(
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
                      child: Column(
                        children: [
                          author,
                          point,
                          story,
                          quote,
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeParagraph,
        tooltip: 'Generate Paragraph',
        child: Icon(Icons.add),
      ),
    );

  }
}
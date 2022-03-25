// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:english_techniques/english_techniques.dart' as english;

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
      print(paragraph);
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
        hintText: 'Point',
      ),
      controller: _pointController,
    );
    TextField story = TextField(
      decoration: InputDecoration(
        labelText: 'Story',
        hintText: 'Story',
      ),
      controller: _storyController,
    );
    TextField quote = TextField(
      decoration: InputDecoration(
        labelText: 'Quote',
        hintText: 'Quote',
      ),
      controller: _quoteController,
    );

    // void to change the paragraph using the ParaMaker.

    return Scaffold(
      appBar: AppBar(
        title: Text('Paragraph Generator'),
      ),
      body: Center(
        child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                paragraph,
                style: TextStyle(fontSize: 20),
              ),
              author,
              point,
              story,
              quote,
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
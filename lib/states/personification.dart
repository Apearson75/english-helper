// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:english_techniques/english_techniques.dart' as english;
import 'package:flutter/services.dart';

class Personification extends StatefulWidget {
  @override
  _PersonificationState createState() => _PersonificationState();
}

class _PersonificationState extends State<Personification> {
  String personSentence = 'Type Thing in the boxes to generate a personification.';
  final _nounController = TextEditingController();
  final _verbController = TextEditingController();


  
  // void to generate personification.
  void newPersonification(noun, verb) {
    setState(() {
      personSentence = english.Generator().randomPersonification(noun, verb);
    });
  }
  
  @override
  Widget build(BuildContext context) {

    // Text fields for the user to input the noun and verb.
    TextField noun = TextField(
      decoration: InputDecoration(
        labelText: 'Noun',
        hintText: 'Noun',
      ),
      controller: _nounController,
    );
    TextField verb = TextField(
      decoration: InputDecoration(
        labelText: 'Verb',
        hintText: 'Verb',
      ),
      controller: _verbController,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Personification'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Column(
                children: [
                  Text(personSentence),
                  noun,
                  verb,
                  ElevatedButton(
                    child: Text('Generate'),
                    onPressed: () {
                      newPersonification(
                        _nounController.text,
                        _verbController.text,
                      );
                    },
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
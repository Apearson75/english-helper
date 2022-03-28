// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:english_techniques/english_techniques.dart' as english;
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: Text('Personification Generator', style: GoogleFonts.nunito(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(personSentence, style: GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: noun,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: verb,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Text('Generate'),
                      onPressed: () {
                        newPersonification(
                          _nounController.text,
                          _verbController.text,
                        );
                      },
                    ),
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
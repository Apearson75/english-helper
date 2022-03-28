// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:english_techniques/english_techniques.dart' as english;
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Simile extends StatefulWidget {
  @override
  _SimileState createState() => _SimileState();
}

class _SimileState extends State<Simile> {
  String simileSentence = 'Type Thing in the boxes to generate a simile.';
  final _nounController = TextEditingController();


  
  // void to generate personification.
  void newSimile(noun) {
    setState(() {
      simileSentence = english.Generator().randomSimile(noun);
    });
    print(simileSentence);
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

    return Scaffold(
      appBar: AppBar(
        title: Text('Simile Generator', style: GoogleFonts.nunito(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))),
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
                    child: Text(simileSentence, style: GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: noun,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      child: Text('Generate'),
                      onPressed: () {
                        newSimile(
                          _nounController.text,
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
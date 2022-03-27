// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:english_techniques/english_techniques.dart' as english;
import 'package:google_fonts/google_fonts.dart';

class CheckQuote extends StatefulWidget {
  @override
  _CheckQuoteState createState() => _CheckQuoteState();
}

class _CheckQuoteState extends State<CheckQuote> {
  final _quoteController = TextEditingController();
  String technique = 'Type a quote in the box to check the technique.';
  // void to check the quote using english.Techniques().
  void checkQuote(quote) {
    setState(() {
      if (english.Techniques().simile(quote)) {
        technique = 'The quote is a simile.';
      } else if (english.Techniques().personification(quote)){
        technique = 'The quote has personification.';
      } else if (english.Techniques().onomato(quote)) {
        technique = 'The quote has onomatopoeia.';
      } else {
        technique = 'The quote is could be a different technique.';
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check Quote', style: GoogleFonts.nunito(
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600
          ),
        )),
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
                    child: Text(
                      technique,
                      style: GoogleFonts.nunito(
                        textStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, bottom: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Quote',
                        hintText: 'Quote',
                      ),
                      controller: _quoteController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ElevatedButton(
                      child: Text('Check', style: GoogleFonts.nunito(fontWeight: FontWeight.w600)),
                      onPressed: () => checkQuote(_quoteController.text),
                    ),
                  ),
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}
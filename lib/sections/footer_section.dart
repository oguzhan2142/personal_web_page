import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_personal_webpage/animated_text.dart';
import 'package:my_personal_webpage/homepage.dart';
import 'dart:js' as js;

class FooterSection extends StatelessWidget {
  final List<String> descTexts = [
    'This site was built with ',
    'Flutter', //link
    ', ',
    'Visual Studio Code', //link
    '. ',
    'Lato used from ',
    'Google fonts', //link
    '. Inspired by the design of the ',
    'pavelhuza.com', //link
    ' site.'
  ];

  final List<Widget> widgets = [];

  final _defaultStyle = GoogleFonts.lato(
    fontWeight: FontWeight.bold,
    color: Colors.grey[500],
  );

  final _hoverStyle = GoogleFonts.lato(
    fontWeight: FontWeight.w800,
    color: Colors.grey[300],
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(
        horizontal: HomePage.horizontalPadding,
        vertical: 90,
      ),
      color: HomePage.headerColor,
      child: Column(
        children: [
          Text(
            '© 2021 OGUZHAN TOPAL. MADE IN TURKEY',
            style: GoogleFonts.lato(
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 50),
          RichText(
            text: TextSpan(
              style: GoogleFonts.lato(
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
              children: [
                TextSpan(text: descTexts[0]),
                WidgetSpan(
                  child: AnimatedText(
                    text: descTexts[1],
                    defaultStyle: _defaultStyle,
                    hoverStyle: _hoverStyle,
                    onClick: () {
                      // https://flutter.dev/
                      js.context.callMethod('open', ['https://flutter.dev']);
                    },
                  ),
                ),
                TextSpan(text: descTexts[2]),
                WidgetSpan(
                  child: AnimatedText(
                    text: descTexts[3],
                    defaultStyle: _defaultStyle,
                    hoverStyle: _hoverStyle,
                    onClick: () {
                      js.context.callMethod(
                          'open', ['https://code.visualstudio.com']);
                    },
                  ),
                ),
                TextSpan(text: descTexts[4]),
                TextSpan(text: descTexts[5]),
                WidgetSpan(
                  child: AnimatedText(
                    text: descTexts[6],
                    defaultStyle: _defaultStyle,
                    hoverStyle: _hoverStyle,
                    onClick: () {
                      js.context
                          .callMethod('open', ['https://fonts.google.com']);
                    },
                  ),
                ),
                TextSpan(text: descTexts[7]),
                WidgetSpan(
                  child: AnimatedText(
                    text: descTexts[8],
                    defaultStyle: _defaultStyle,
                    hoverStyle: _hoverStyle,
                    onClick: () {
                      js.context
                          .callMethod('open', ['http://www.pavelhuza.com']);
                    },
                  ),
                ),
                TextSpan(text: descTexts[9]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

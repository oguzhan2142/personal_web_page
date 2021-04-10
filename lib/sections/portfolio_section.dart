import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_personal_webpage/homepage.dart';

class PortfolioSection extends StatelessWidget {
  final String portfolioDesc =
      'You can see the personal projects I have been working on below. Games are developed with unity and mobile applications with flutter and java.';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 120,
        horizontal: HomePage.horizontalPadding,
      ),
      child: Column(
        children: [
          Text(
            'Portfolio',
            style: GoogleFonts.lato(
              color: HomePage.headerColor,
              fontSize: HomePage.headerSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: HomePage.gapBetweenHeaderAndText),
          Text(
            portfolioDesc,
            style: GoogleFonts.lato(
              color: HomePage.textColor,
              fontSize: HomePage.textSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

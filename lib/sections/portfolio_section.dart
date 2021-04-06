import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_personal_webpage/homepage.dart';

class PortfolioSection extends StatelessWidget {
  String portfolioDesc =
      'Below you can see some projects I\'ve been working on lately. I divide each project into four follow-up areas: comprehensive research, wireframing, design & development. This process allows me to create great product with client goals in mind.';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 60,
        horizontal: HomePage.horizontalPadding,
      ),
      child: Column(
        children: [
          Text(
            'Portfolio',
            style: GoogleFonts.lato(
              color: HomePage.headerColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            portfolioDesc,
            style: GoogleFonts.lato(
              color: HomePage.textColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

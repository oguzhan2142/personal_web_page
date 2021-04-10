import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_personal_webpage/homepage.dart';

class FooterSection extends StatelessWidget {
  final String desc =
      'This site was built with great tools like Photoshop, Sublime Text 2 & Codekit. Font used in headlines is Brandon Grotesque, font in body copy is FF Meta Serif Web Pro. Both fonts are served up via Typekit.';

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
            '©2021 OGUZHAN TOPAL.MADE IN TURKEY',
            style: GoogleFonts.lato(
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 50),
          Text(
            desc,
            style: GoogleFonts.lato(
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}

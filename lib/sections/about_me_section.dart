import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_personal_webpage/homepage.dart';

class AboutmeSection extends StatelessWidget {
  final String aboutMe =
      "I\'m web designer & front-end developer with 7 years of professional experience. I\'m interested in all kinds of visual communication, but my major focus is on designing web, mobile & tablet interfaces. I also have skills in other fields like branding, icon design or web development.Earlier I was full-time freelancer for 6 years behind my studio Precise Design. Currently I\'m working for little overgrown czech “start-up” called Heureka.cz Restu.cz as a Senior UI/UX designer Product designer.";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HomePage.headerColor,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 120,
          horizontal: HomePage.horizontalPadding,
        ),
        child: Column(
          children: [
            Text(
              'About Me',
              style: GoogleFonts.lato(
                color: Colors.grey[300],
                fontSize: HomePage.headerSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              aboutMe,
              style: GoogleFonts.lato(
                color: Colors.grey[400],
                fontSize: HomePage.textSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

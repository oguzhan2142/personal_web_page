import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_personal_webpage/homepage.dart';

class AboutmeSection extends StatelessWidget {
  final String aboutMe =
      "I\'m physical therapist & software engineer student. I\'m interested in developing mobile apps & mobile games using unity, flutter and java technologies. Earlier I was full-time physiotherapist but currently I am changing my career towards the field I am passionate about.";

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

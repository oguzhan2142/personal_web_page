import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_personal_webpage/animated_button.dart';
import 'package:my_personal_webpage/homepage.dart';
import 'package:url_launcher/url_launcher.dart';

class SendMeMailSection extends StatelessWidget {
  final String desc =
      'If you like my work and have some cool project to work on, just send me direct message or contact me through social sites listed below.';


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
              'Contact',
              style: GoogleFonts.lato(
                color: Colors.grey[300],
                fontSize: HomePage.headerSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              desc,
              style: GoogleFonts.lato(
                color: Colors.grey[400],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            AnimatedBorderButton(
              title: 'Send Me Mail',
              onClick: () {
                final Uri _emailLaunchUri = Uri(
                  scheme: 'mailto',
                  path: 'oguzhantopal2142@gmail.com',
                );

                launch(_emailLaunchUri.toString());
              },
              iconData: Icons.send,
              defaultColor: Colors.grey[400],
              hoverColor: HomePage.headerColor,
            ),
          ],
        ),
      ),
    );
  }
}

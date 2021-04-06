import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_personal_webpage/animated_button.dart';
import 'package:my_personal_webpage/homepage.dart';

class SendMeMailSection extends StatelessWidget {
  final String desc =
      'If you like my work and have some cool project to work on, just send me direct message or contact me through social sites listed below.';

  final Color themeColor = Colors.blueGrey[700];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: themeColor,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 120,
          horizontal: HomePage.horizontalPadding,
        ),
        child: Column(
          children: [
            Text(
              desc,
              style: GoogleFonts.lato(
                color: Colors.grey[200],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            AnimatedBorderButton(
              title: 'Send Me Mail',
              onClick: () {},
              iconData: Icons.send,
              defaultColor: Colors.grey[200],
              hoverColor: themeColor,
            ),
          ],
        ),
      ),
    );
  }
}

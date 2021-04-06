import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_personal_webpage/animated_button.dart';
import 'package:my_personal_webpage/homepage.dart';

class IntroductionSection extends StatelessWidget {
  String description =
      'I\'m a Turkish based physiotherapist & mobile developer focused on crafting clean  & user‑friendly experiences.';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'background.jpg',
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: HomePage.horizontalPadding),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Oğuzhan Topal',
                  style: GoogleFonts.getFont(
                    'Lato',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400],
                    fontSize: 50,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  description,
                  style: GoogleFonts.getFont(
                    'Lato',
                    // fontWeight: FontWeight.bold,
                    color: Colors.grey[400],
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 60),
                AnimatedBorderButton(
                  title: 'Projelerim',
                  onClick: () {},
                  hoverColor: Color.fromRGBO(21, 30, 33, 1),
                  defaultColor: Colors.grey[400],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

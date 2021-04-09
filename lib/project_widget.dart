import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_personal_webpage/animated_button.dart';
import 'package:my_personal_webpage/homepage.dart';
import 'dart:js' as js;

class ProjectWidget extends StatelessWidget {
  final String title;
  final String description;
  final String githubLink;
  final String liveLink;
  final String screenshotPath;

  const ProjectWidget({
    Key key,
    @required this.title,
    @required this.description,
    @required this.screenshotPath,
    this.githubLink,
    this.liveLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: HomePage.horizontalPadding,
        vertical: 60,
      ),
      child: Column(
        children: [
          Text(
            title,
            style: GoogleFonts.lato(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: GoogleFonts.lato(
              fontSize: 20,
              color: Colors.grey[700],
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBorderButton(
                title: 'Github',
                iconData: FontAwesomeIcons.github,
                onClick: () {
                  js.context.callMethod('open', [githubLink]);
                },
                width: 200,
                defaultColor: Colors.red,
                hoverColor: Colors.white,
              ),
              SizedBox(width: 30),
              AnimatedBorderButton(
                title: 'Live',
                iconData: Icons.computer,
                width: 200,
                onClick: () {
                  js.context.callMethod('open', [liveLink]);
                },
                defaultColor: Colors.red,
                hoverColor: Colors.white,
              ),
            ],
          ),
          SizedBox(height: 5),
          Image.asset(screenshotPath,
              width: MediaQuery.of(context).size.width / 3 * 2),
        ],
      ),
    );
  }
}

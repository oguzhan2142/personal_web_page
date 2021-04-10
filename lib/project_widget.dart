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
  final double imageWidth;

  const ProjectWidget({
    Key key,
    @required this.title,
    @required this.description,
    @required this.screenshotPath,
    this.githubLink,
    this.liveLink,
    @required this.imageWidth,
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
              fontSize: HomePage.headerSize,
              fontWeight: FontWeight.bold,
              color: HomePage.headerColor,
            ),
          ),
          SizedBox(height: HomePage.gapBetweenHeaderAndText),
          Text(
            description,
            style: GoogleFonts.lato(
              fontSize: HomePage.textSize,
              color: HomePage.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBorderButton(
                title: 'Github',
                iconData: FontAwesomeIcons.github,
                onClick: githubLink != null
                    ? () {
                        js.context.callMethod('open', [githubLink]);
                      }
                    : null,
                width: 200,
                defaultColor: Colors.red,
                disableColor: Colors.grey[600],
                hoverColor: Colors.white,
              ),
              SizedBox(width: 30),
              AnimatedBorderButton(
                title: 'Live',
                iconData: Icons.computer,
                width: 200,
                onClick: liveLink != null
                    ? () {
                        js.context.callMethod('open', [liveLink]);
                      }
                    : null,
                defaultColor: Colors.red,
                hoverColor: Colors.white,
                disableColor: Colors.grey[600],
              ),
            ],
          ),
          SizedBox(height: 20),
          Image.asset(screenshotPath, width: imageWidth),
        ],
      ),
    );
  }
}

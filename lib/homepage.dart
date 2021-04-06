import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_personal_webpage/appbar_action_button.dart';
import 'package:my_personal_webpage/sections/about_me_section.dart';
import 'package:my_personal_webpage/sections/introduction_section.dart';
import 'package:my_personal_webpage/sections/portfolio_section.dart';
import 'package:my_personal_webpage/sections/projects_section.dart';
import 'package:my_personal_webpage/sections/send_me_mail_section.dart';

class HomePage extends StatefulWidget {
  static final horizontalPadding = 30.0;
  static final Color textColor = Colors.grey[600];
  static final Color headerColor = Color.fromRGBO(21, 30, 33, 1);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final toolbarHeight = 80.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IntroductionSection(),
                Divider(
                  color: Colors.black38,
                  height: 1,
                  thickness: 0.5,
                ),
                PortfolioSection(),
                Divider(
                  color: Colors.black38,
                  height: 1,
                  thickness: 0.5,
                ),
                ProjectsSection(),
                AboutmeSection(),
                SendMeMailSection(),
              ],
            ),
          ),
          Container(
            height: toolbarHeight,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AppbarActionButton(
                  title: 'Portfolio',
                  onClick: () {},
                ),
                AppbarActionButton(
                  title: 'About',
                  onClick: () {},
                ),
                AppbarActionButton(
                  title: 'Contact',
                  onClick: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

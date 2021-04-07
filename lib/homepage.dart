import 'package:flutter/material.dart';
import 'package:my_personal_webpage/appbar_action_button.dart';
import 'package:my_personal_webpage/sections/about_me_section.dart';
import 'package:my_personal_webpage/sections/introduction_section.dart';
import 'package:my_personal_webpage/sections/portfolio_section.dart';
import 'package:my_personal_webpage/sections/projects_section.dart';
import 'package:my_personal_webpage/sections/send_me_mail_section.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class HomePage extends StatefulWidget {
  static final horizontalPadding = 30.0;
  static final Color textColor = Colors.grey[600];
  static final Color headerColor = Color.fromRGBO(21, 30, 33, 1);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final toolbarHeight = 80.0;

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  bool isSwiped = false;

  List<Widget> widgets;

  @override
  void initState() {
    itemPositionsListener.itemPositions.addListener(() {
      if (itemPositionsListener.itemPositions.value.isNotEmpty) {
        if (itemPositionsListener.itemPositions.value.first.index != 0) {
          setState(() {
            isSwiped = true;
          });
        } else {
          setState(() {
            isSwiped = false;
          });
        }
      }
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    widgets = [
      // 0
      IntroductionSection(
        scrollProjectsSection: () {
          animateToIndex(4);
        },
      ),
      //1
      Divider(
        color: Colors.black38,
        height: 1,
        thickness: 0.5,
      ),
      //2
      PortfolioSection(),
      //3
      Divider(
        color: Colors.black38,
        height: 1,
        thickness: 0.5,
      ),
      ProjectsSection(), //4
      AboutmeSection(), //5
      SendMeMailSection(), //6
    ];
    super.didChangeDependencies();
  }

  void animateToIndex(int index) {
    itemScrollController.scrollTo(
      index: index,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScrollablePositionedList.builder(
            itemCount: widgets.length,
            itemBuilder: (context, index) => widgets[index],
            itemScrollController: itemScrollController,
            itemPositionsListener: itemPositionsListener,
          ),
          Container(
            height: toolbarHeight,
            width: MediaQuery.of(context).size.width,
            decoration: isSwiped
                ? BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 2),
                      ),
                    ],
                  )
                : null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AppbarActionButton(
                  title: 'Portfolio',
                  color: isSwiped ? HomePage.headerColor : Colors.grey[400],
                  onClick: () {
                    animateToIndex(2);
                  },
                ),
                AppbarActionButton(
                  title: 'About',
                  color: isSwiped ? HomePage.headerColor : Colors.grey[400],
                  onClick: () {
                    animateToIndex(5);
                  },
                ),
                AppbarActionButton(
                  title: 'Contact',
                  color: isSwiped ? HomePage.headerColor : Colors.grey[400],
                  onClick: () {
                    animateToIndex(6);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

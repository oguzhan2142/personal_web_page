import 'package:flutter/material.dart';
import 'package:my_personal_webpage/project_widget.dart';

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ProjectWidget(
            title: 'Brick Breakers',
            description:
                '3D brick breakers game where you can buy and use skills and have to escape from brick pieces.',
            githubLink: 'https://github.com/oguzhan2142/Brick-Breaker-3D',
            liveLink: 'https://oguzhan2142.itch.io/brick-breaker',
            screenshotPath: 'assets/projects_screenshots/brick_breakers.png',
          ),
        ],
      ),
    );
  }
}

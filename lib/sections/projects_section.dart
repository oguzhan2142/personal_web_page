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
            imageWidth: MediaQuery.of(context).size.width / 3 * 2,
          ),
          Divider(
            height: 2,
            thickness: 0.3,
            color: Colors.black54,
          ),
          ProjectWidget(
            title: 'Bknz Sayacı',
            description: 'A tool that counts bkz references on ekşisözlük.com',
            screenshotPath: 'assets/projects_screenshots/bknz.png',
            githubLink: 'https://github.com/oguzhan2142/Eksi-Bakiniz-Sayaci',
            imageWidth: MediaQuery.of(context).size.width / 3 * 2,
          ),
          Divider(
            height: 2,
            thickness: 0.3,
            color: Colors.black54,
          ),
          ProjectWidget(
            title: 'Minnak',
            description: 'Platform game',
            screenshotPath: 'assets/projects_screenshots/minnak.png',
            liveLink: 'https://oguzhan2142.itch.io/platform-game',
            imageWidth: MediaQuery.of(context).size.width / 5 * 2,
          ),
          Divider(
            height: 2,
            thickness: 0.3,
            color: Colors.black54,
          ),
          ProjectWidget(
            title: 'Ekşimsi',
            description: 'An app for eksisozluk.com',
            screenshotPath: 'assets/projects_screenshots/eksimtrak.png',
            liveLink:
                'https://play.google.com/store/apps/details?id=com.oguzhan.eksi_sozluk',
            imageWidth: MediaQuery.of(context).size.width / 3 * 2,
          ),
          ProjectWidget(
            title: 'Episolide',
            description: 'Series episodes and seasons overview app',
            screenshotPath: 'assets/projects_screenshots/episolide.png',
            imageWidth: MediaQuery.of(context).size.width / 3 * 2,
            githubLink: 'https://github.com/oguzhan2142/Episolide',
          ),
        ],
      ),
    );
  }
}

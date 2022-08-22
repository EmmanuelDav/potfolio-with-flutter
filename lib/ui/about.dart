import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'responsive_widget.dart';
import '../data/skills.dart';
import '../config/constants.dart';
import '../config/styles.dart';
import '../config/colors.dart';

class About extends StatelessWidget {
  final String _avatar = 'images/ouahid.png';
  final String _description =
      "I am mobile developer with 4+ years of experience in creating and developing mobile solutions for businesses and startups using Flutter and Native Android Technologies.";

  @override
  Widget build(BuildContext context) => ResponsiveWidget(
      largeScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Container(
                    color: AppColors.greyLight,
                    child: Image.asset(
                      _avatar,
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ABOUT ME',
                        style: TextStyle(
                          color: AppColors.yellow,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        _description,
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                              color: Colors.black.withOpacity(.7),
                              fontSize: 17,
                            ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.all(40),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: AppColors.yellow,
                                    textStyle: TextStyle(color: Colors.yellow)),
                                child: Text('HIRE ME NOW'),
                              )),
                          const SizedBox(width: 20),
                          Padding(
                            padding: EdgeInsets.all(40),
                            child: ElevatedButton(

                              onPressed: _downloadCV,
                              style: ElevatedButton.styleFrom(backgroundColor: AppColors.black,textStyle: TextStyle(color: Colors.white)),
                              child: Text('VIEW RESUME'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            Text('MY SKILLS', style: AppStyles.title),
            Container(width: 100, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 50),
            Wrap(
              spacing: 25,
              runSpacing: 25,
              runAlignment: WrapAlignment.spaceBetween,
              children: SKILLS.map(_buildSkill).toList(),
            ),
          ],
        ),
      ),
      smallScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 50,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(1000),
              child: Container(
                color: AppColors.greyLight,
                child: Image.asset(
                  _avatar,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'ABOUT ME',
              style: TextStyle(
                color: AppColors.yellow,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              _description,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: Colors.black.withOpacity(.7),
                    fontSize: 13,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.yellow,
                      textStyle: TextStyle(color: Colors.white)),
                  onPressed: () {},
                  child: Text('HIRE ME NOW'),
                )),
            const SizedBox(height: 20),
            Padding(padding:  const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: ElevatedButton(
             onPressed: _downloadCV,
              child: Text('VIEW RESUME'),
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.black,textStyle: TextStyle(color: Colors.white)),
            ),),
            const SizedBox(height: 50),
            Text('MY SKILLS', style: AppStyles.title),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 50, height: 2, color: AppColors.yellow),
            const SizedBox(height: 25),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.spaceBetween,
              children: SKILLS.map(_buildSkill).toList(),
            ),
          ],
        ),
      ));

  void _downloadCV() {
    launch(AppConstants.cv);
  }

  Widget _buildSkill(Skill skill) => Chip(label: Text(skill.name!));
}

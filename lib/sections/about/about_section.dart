import 'package:flutter/material.dart';
import 'package:portfolio_web/widgets/default_button.dart';
import 'package:portfolio_web/widgets/my_outline_button.dart';
import 'package:portfolio_web/common/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';

class AboutSection extends StatelessWidget {
  void launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              SizedBox(
                width: 16.0,
              ),
              Expanded(
                child: AboutSectionText(
                  text:
                      "I love to solve problems using technology - starting from common problems and transforming it into an applicable solution for society. Professionally, I have done this at a software house during my internship period; personally, I'm an innovator that's driven to help my team solve our problems.",
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!",
                press: () {
                  launchURL('mailto:tjandradarmo@protonmail.com');
                },
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download Resume",
                press: () {
                  launchURL(
                      'https://drive.google.com/file/d/1L2-AfWIgbbBTkDRHAQJL6cfSSqUwSdzE/view?usp=sharing');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

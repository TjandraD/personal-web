import 'package:flutter/material.dart';
import 'package:portfolio_web/models/SocialLinks.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../common/constants.dart';

class LinkList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          socialLinks.length,
          (index) => buildLinkList(context, index),
        ),
      ),
    );
  }

  Widget buildLinkList(BuildContext context, int index) {
    void launchURL(String url) async => await canLaunch(url)
        ? await launch(url)
        : throw 'Could not launch $url';

    return GestureDetector(
      onTap: () {
        launchURL(socialLinks[index].url);
      },
      child: Container(
        constraints: BoxConstraints(minWidth: 50),
        margin: EdgeInsets.symmetric(
          horizontal: 50.0,
        ),
        height: 80,
        child: Center(
          child: Row(
            children: [
              Image.asset(
                'assets/images/${socialLinks[index].img}',
                width: 32.0,
                height: 32.0,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                socialLinks[index].title,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

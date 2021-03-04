import 'package:flutter/material.dart';
import 'package:portfolio_web/models/RecentWork.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../common/constants.dart';

class RecentWorkCard extends StatefulWidget {
  const RecentWorkCard({
    Key key,
    this.index,
    this.press,
  }) : super(key: key);

  final int index;
  final Function press;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);

  void launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: Image.asset(recentWorks[widget.index].image),
            ),
            Container(
              margin: EdgeInsets.all(kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(recentWorks[widget.index].category.toUpperCase()),
                  Text(
                    recentWorks[widget.index].title,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(height: 1.5),
                  ),
                  SizedBox(height: kDefaultPadding * 0.5),
                  Text(
                    recentWorks[widget.index].description,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(height: kDefaultPadding),
                  GestureDetector(
                    onTap: () {
                      launchURL(recentWorks[widget.index].url);
                    },
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      width: 200.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 0.3,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/github.png',
                            width: 32,
                            height: 32,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            'GitHub Repository',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

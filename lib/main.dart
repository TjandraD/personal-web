import 'package:flutter/material.dart';
import 'package:portfolio_web/common/styles.dart';
import 'package:portfolio_web/sections/top/top_section.dart';
import 'package:url_strategy/url_strategy.dart';
import 'common/constants.dart';
import 'sections/about/about_section.dart';
import 'sections/service/service_section.dart';
import 'sections/recent_work/recent_work_section.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: textTheme),
      title: 'Tjandra Darmo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(height: kDefaultPadding * 2),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
          ],
        ),
      ),
    );
  }
}

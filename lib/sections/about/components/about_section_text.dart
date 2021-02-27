import 'package:flutter/material.dart';
import '../../../common/constants.dart';

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1.copyWith(
              color: kTextColor,
              height: 2,
            ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'short_details.dart';

class LogoAndContent extends StatelessWidget {
  const LogoAndContent({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/images/Logo.png"),
        Spacer(),
        ShortDetails(size: size),
        Spacer(flex: 2),
      ],
    );
  }
}

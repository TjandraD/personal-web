import 'package:flutter/material.dart';
import '../../common/constants.dart';
import 'components/logo_content.dart';
import 'components/person_pic.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      color: Color(0xFF736598),
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Row(
          children: [
            Expanded(child: LogoAndContent(size: size)),
            Expanded(
              child: Center(
                child: PersonPic(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

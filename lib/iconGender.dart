import 'package:flutter/material.dart';

import 'constants.dart';

class IconGender extends StatelessWidget {
  final IconData myIcon;
  final String sex;

  const IconGender({Key key, this.myIcon, this.sex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          myIcon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          sex,
          style: kBoxTextStyle,
        ),
      ],
    );
  }
}

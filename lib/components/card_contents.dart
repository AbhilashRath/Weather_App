import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CardContents extends StatelessWidget {
  CardContents({@required this.property1,@required this.value1,@required this.property2,@required this.value2});
  final String property1;
  final String value1;
  final String property2;
  final String value2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            property1,
            style:kCardContentPropertyStyle,
          ),
        ),
        Expanded(
          child: Text(
            value1,
            textAlign: TextAlign.center,
            style: kCardContentValueStyle
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            property2,
            style: kCardContentPropertyStyle,
          ),
        ),
        Expanded(
          child: Text(
            value2,
            textAlign: TextAlign.right,
            style: kCardContentValueStyle,
          ),
        ),
      ],
    );
  }
}
